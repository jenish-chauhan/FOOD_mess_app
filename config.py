"""
Database Configuration for Track & Serve Application
Local development (XAMPP) configuration.
"""

# Database Configuration
DB_CONFIG = {
    'host': 'localhost',
    'port': 3306,
    'user': 'root',
    'password': '',  # Default XAMPP MySQL password (empty)
    'database': 'track_serve',
    'charset': 'utf8mb4',
    'cursorclass': 'DictCursor'  # Will be converted to actual class in main.py
}

# Alternative: Use environment variables for production
# Uncomment and set these in your environment if needed
# import os
# DB_CONFIG = {
#     'host': os.getenv('DB_HOST', 'localhost'),
#     'port': int(os.getenv('DB_PORT', 3306)),
#     'user': os.getenv('DB_USER', 'root'),
#     'password': os.getenv('DB_PASSWORD', ''),
#     'database': os.getenv('DB_NAME', 'track_serve'),
#     'charset': 'utf8mb4',
#     'cursorclass': 'DictCursor'
# }
