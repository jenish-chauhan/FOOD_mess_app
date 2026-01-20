FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

# Install system deps for mysqlclient
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       default-libmysqlclient-dev \
       pkg-config \
       netcat-traditional \
    && rm -rf /var/lib/apt/lists/*

# Install Python deps
COPY requirements.txt .
RUN pip install --upgrade pip setuptools wheel \
    && pip install -r requirements.txt \
    && pip install gunicorn

# Copy codebase
COPY . .

# Expose port for gunicorn
EXPOSE 5000

# Wait for DB then start application
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "main:app"]
