# Use Python 3.12 slim image for smaller size
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install system dependencies for MySQL client libraries
# These are required for mysqlclient/PyMySQL to work properly
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements first for better Docker layer caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port 5000
EXPOSE 5000

# Use gunicorn to run the Flask app
# -w 4: 4 worker processes
# -b 0.0.0.0:5000: bind to all interfaces on port 5000
# --timeout 120: increase timeout for database operations
# main:app: module main, variable app (Flask instance)
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "--timeout", "120", "main:app"]
