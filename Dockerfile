# syntax=docker/dockerfile:1.7

FROM ubuntu:24.04 AS builder

ARG DEBIAN_FRONTEND=noninteractive

# Prevent services from auto-starting during package install (no systemd in build).
RUN printf '#!/bin/sh\nexit 101\n' > /usr/sbin/policy-rc.d && chmod +x /usr/sbin/policy-rc.d

# System dependencies (plus minimal extras needed for distroless runtime).
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    ca-certificates \
    python3 \
    python3-venv \
    python3-pip \
    mysql-server \
    mysql-client \
    libmysqlclient-dev \
    gcc \
    tini \
    busybox-static \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Create venv and install python dependencies.
COPY requirements.txt /app/requirements.txt
RUN python3 -m venv /opt/venv \
  && /opt/venv/bin/pip install --no-cache-dir --upgrade pip setuptools wheel \
  && /opt/venv/bin/pip install --no-cache-dir -r /app/requirements.txt \
  && /opt/venv/bin/pip install --no-cache-dir gunicorn

# Copy application source (includes SQL dumps at repo root).
COPY . /app

# Initialize MySQL datadir and import persistent schema/data.
ENV MYSQL_DATADIR=/opt/mysql/data
RUN set -eux; \
  mkdir -p "$MYSQL_DATADIR"; \
  chown -R mysql:mysql /opt/mysql; \
  mysqld --initialize-insecure --datadir="$MYSQL_DATADIR" --user=mysql; \
  mysqld --datadir="$MYSQL_DATADIR" --user=mysql \
    --socket=/tmp/mysql.sock \
    --pid-file=/tmp/mysqld.pid \
    --skip-networking \
    --log-error=/tmp/mysqld.log & \
  for i in $(seq 1 60); do \
    if mysqladmin --socket=/tmp/mysql.sock -uroot ping >/dev/null 2>&1; then break; fi; \
    sleep 1; \
  done; \
  # Make sure the app can connect as root with empty password over TCP.
  mysql --socket=/tmp/mysql.sock -uroot -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';"; \
  mysql --socket=/tmp/mysql.sock -uroot -e "CREATE USER IF NOT EXISTS 'root'@'127.0.0.1' IDENTIFIED WITH mysql_native_password BY '';"; \
  mysql --socket=/tmp/mysql.sock -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'127.0.0.1' WITH GRANT OPTION; FLUSH PRIVILEGES;"; \
  mysql --socket=/tmp/mysql.sock -uroot -e "CREATE DATABASE IF NOT EXISTS track_serve;"; \
  mysql --socket=/tmp/mysql.sock -uroot track_serve < /app/track_serve_Final.sql; \
  # The two provided dumps overlap. Import the second with --force so the build
  # doesn't crash on duplicate DDL/data. (We still bake the resulting DB into image.)
  mysql --socket=/tmp/mysql.sock -uroot --force track_serve < /app/track_serve.sql || true; \
  mysqladmin --socket=/tmp/mysql.sock -uroot shutdown; \
  rm -f /tmp/mysql.sock /tmp/mysqld.pid

# Build a self-contained runtime filesystem tree for Distroless.
RUN set -eux; \
  mkdir -p /opt/runtime; \
  copy_file() { \
    src="$1"; \
    dest="/opt/runtime${src}"; \
    mkdir -p "$(dirname "$dest")"; \
    cp -a "$src" "$dest"; \
    # If src is a symlink, also copy the real target so the runtime loader
    # always has the actual .so file (distroless won't have the full tree).
    if [ -L "$src" ]; then \
      real="$(readlink -f "$src" || true)"; \
      if [ -n "${real:-}" ] && [ -f "$real" ]; then \
        real_dest="/opt/runtime${real}"; \
        mkdir -p "$(dirname "$real_dest")"; \
        cp -a "$real" "$real_dest"; \
      fi; \
    fi; \
  }; \
  copy_deps() { \
    f="$1"; \
    ldd "$f" | awk '{for (i=1;i<=NF;i++) if ($i ~ /^\\//) print $i}' | sort -u | while read -r lib; do \
      [ -f "$lib" ] && copy_file "$lib" || true; \
    done; \
  }; \
  \
  # App + venv.
  mkdir -p /opt/runtime/app; \
  cp -a /app/. /opt/runtime/app/; \
  mkdir -p /opt/runtime/opt; \
  cp -a /opt/venv /opt/runtime/opt/venv; \
  \
  # Runtime scratch dirs (Distroless is minimal; ensure these exist).
  mkdir -p /opt/runtime/tmp; \
  chmod 1777 /opt/runtime/tmp; \
  mkdir -p /opt/runtime/var/lib/mysql-files /opt/runtime/var/run/mysqld; \
  chown -R mysql:mysql /opt/runtime/var/lib/mysql-files /opt/runtime/var/run/mysqld; \
  chmod 0750 /opt/runtime/var/lib/mysql-files; \
  \
  # Entrypoint (make it executable inside the image).
  cp -a /app/entrypoint.sh /opt/runtime/entrypoint.sh; \
  chmod 0755 /opt/runtime/entrypoint.sh; \
  \
  # MySQL: datadir + config + binaries + plugins/share data.
  mkdir -p /opt/runtime/data; \
  cp -a "$MYSQL_DATADIR"/. /opt/runtime/data/; \
  mkdir -p /opt/runtime/etc /opt/runtime/usr/lib /opt/runtime/usr/share; \
  copy_file /usr/sbin/mysqld; \
  copy_file /usr/bin/mysql; \
  copy_file /usr/bin/mysqladmin; \
  cp -a /etc/mysql /opt/runtime/etc/; \
  cp -a /usr/lib/mysql /opt/runtime/usr/lib/; \
  cp -a /usr/share/mysql /opt/runtime/usr/share/; \
  \
  # Python runtime (stdlib) + interpreter symlinks.
  copy_file /usr/bin/python3; \
  if [ -e /usr/bin/python3.12 ]; then copy_file /usr/bin/python3.12; fi; \
  cp -a /usr/lib/python3.12 /opt/runtime/usr/lib/; \
  \
  # tini
  copy_file /usr/bin/tini; \
  \
  # Provide /bin/sh for the entrypoint (Distroless has no shell).
  bb="$(command -v busybox)"; \
  mkdir -p /opt/runtime/bin; \
  cp -a "$bb" /opt/runtime/bin/busybox; \
  ln -sf busybox /opt/runtime/bin/sh; \
  \
  # Minimal identity + TLS + NSS (some are dlopened, not visible to ldd).
  copy_file /etc/passwd; \
  copy_file /etc/group; \
  copy_file /etc/nsswitch.conf; \
  copy_file /etc/ssl/certs/ca-certificates.crt; \
  for nss in /lib/x86_64-linux-gnu/libnss_files.so.2 /lib/x86_64-linux-gnu/libnss_dns.so.2 /lib/x86_64-linux-gnu/libresolv.so.2; do \
    [ -f "$nss" ] && copy_file "$nss" || true; \
  done; \
  \
  # Shared libs for core executables.
  copy_deps /usr/sbin/mysqld; \
  copy_deps /usr/bin/mysql; \
  copy_deps /usr/bin/mysqladmin; \
  copy_deps /usr/bin/python3; \
  copy_deps /usr/bin/tini; \
  \
  # Shared libs for MySQL plugins.
  if [ -d /usr/lib/mysql/plugin ]; then \
    for so in /usr/lib/mysql/plugin/*.so; do [ -f "$so" ] && copy_deps "$so" || true; done; \
  fi; \
  # Ensure ICU libraries are included. Some MySQL builds dlopen ICU (libicuuc.so.*)
  # which may not be visible to ldd for mysqld; explicitly copy them so the
  # distroless runtime has the required libicu*.so files.
  for icu in /usr/lib/x86_64-linux-gnu/libicu*.so*; do \
    [ -f "$icu" ] && copy_file "$icu" || true; \
  done; \
  # Also copy dependencies for a representative ICU library so linked
  # transitive libs are included in the runtime.
  if [ -f /usr/lib/x86_64-linux-gnu/libicuuc.so.74 ]; then copy_deps /usr/lib/x86_64-linux-gnu/libicuuc.so.74 || true; fi; \
  \
  # Shared libs for Python extension modules installed in the venv.
  find /opt/venv -type f -name '*.so' -print0 | while IFS= read -r -d '' so; do copy_deps "$so"; done; \
  \
  # Size optimizations (best-effort).
  strip --strip-unneeded /opt/runtime/usr/sbin/mysqld || true; \
  strip --strip-unneeded /opt/runtime/usr/bin/python3 || true; \
  strip --strip-unneeded /opt/runtime/usr/bin/tini || true

FROM gcr.io/distroless/base-debian12

ENV PATH="/opt/venv/bin:/usr/sbin:/usr/bin:/bin" \
    LD_LIBRARY_PATH="/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/lib:/usr/lib" \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /opt/runtime/ /

EXPOSE 5000

ENTRYPOINT ["/usr/bin/tini","--","/entrypoint.sh"]

