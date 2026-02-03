#!/bin/sh
set -eu

# Simple DB wait using Python (avoids needing netcat or extra packages).
DB_HOST=${DB_HOST:-db}
DB_PORT=${DB_PORT:-3306}
TIMEOUT=${DB_WAIT_TIMEOUT:-60}

echo "Waiting for database $DB_HOST:$DB_PORT (timeout ${TIMEOUT}s)"

python - <<PY
import os, socket, time, sys
host = os.environ.get('DB_HOST', 'db')
port = int(os.environ.get('DB_PORT', '3306'))
timeout = int(os.environ.get('DB_WAIT_TIMEOUT', '60'))
for i in range(timeout):
    try:
        with socket.create_connection((host, port), 2):
            print('Database reachable')
            sys.exit(0)
    except Exception:
        print('Waiting for DB... (%d/%d)' % (i+1, timeout))
        time.sleep(1)
print('Timed out waiting for DB', file=sys.stderr)
sys.exit(1)
PY


# Run auto-migrations
echo "Running database migrations..."
python migrate.py

echo "Starting application"
# Use GUNICORN_WORKERS env var or default to 3
GUNICORN_WORKERS=${GUNICORN_WORKERS:-3}
exec gunicorn --workers ${GUNICORN_WORKERS} --bind 0.0.0.0:5000 main:app
