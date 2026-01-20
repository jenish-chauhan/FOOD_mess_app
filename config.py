"""
Database Configuration for Track & Serve Application
Supports both local development (XAMPP) and Docker deployment.
"""

import os

# Database Configuration
# Uses environment variables when available (for Docker), falls back to local defaults
DB_CONFIG = {
    'host': os.getenv('DB_HOST', 'localhost'),  # 'db' in Docker, 'localhost' for local
    'port': int(os.getenv('DB_PORT', 3306)),
    'user': os.getenv('DB_USER', 'root'),
    'password': os.getenv('DB_PASSWORD', ''),  # Empty for local XAMPP, set in Docker via .env
    'database': os.getenv('DB_NAME', 'track_serve'),
    'charset': 'utf8mb4',
    'cursorclass': 'DictCursor'  # Will be converted to actual class in main.py
}
