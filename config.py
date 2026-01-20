"""
Database Configuration for Track & Serve Application
This file reads database configuration from environment variables when available
so the application can run in containers and production environments.
"""

import os

DB_CONFIG = {
    'host': os.getenv('DB_HOST', 'localhost'),
    'port': int(os.getenv('DB_PORT', 3306)),
    'user': os.getenv('DB_USER', 'root'),
    'password': os.getenv('DB_PASSWORD', ''),
    'database': os.getenv('DB_NAME', 'track_serve'),
    'charset': 'utf8mb4',
    # The main module will set cursorclass to a proper DictCursor where needed.
    'cursorclass': 'DictCursor'
}
