#!/bin/bash
# Wait for MySQL to be ready before starting the application

set -e

host="$1"
shift
port="$1"
shift
cmd="$@"

echo "Waiting for MySQL to be ready at $host:$port..."

until mysqladmin ping -h "$host" -P "$port" --silent; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 2
done

>&2 echo "MySQL is up - executing command"
exec $cmd
