#!/bin/sh
set -eu

MYSQL_DATADIR="${MYSQL_DATADIR:-/data}"
MYSQL_SOCKET="${MYSQL_SOCKET:-/tmp/mysql.sock}"
MYSQL_PIDFILE="${MYSQL_PIDFILE:-/tmp/mysqld.pid}"

# Start MySQL (local-only) in background.
/usr/sbin/mysqld \
  --datadir="${MYSQL_DATADIR}" \
  --user=mysql \
  --bind-address=127.0.0.1 \
  --port=3306 \
  --socket="${MYSQL_SOCKET}" \
  --pid-file="${MYSQL_PIDFILE}" \
  --log-error=/tmp/mysqld.log &

# Wait for MySQL to be ready.
i=0
until mysqladmin --socket="${MYSQL_SOCKET}" -uroot ping >/dev/null 2>&1; do
  i=$((i+1))
  if [ "${i}" -ge 60 ]; then
    echo "MySQL did not become ready in time. See /tmp/mysqld.log" >&2
    exit 1
  fi
  /bin/busybox sleep 1
done

exec /opt/venv/bin/gunicorn --bind 0.0.0.0:5000 main:app

