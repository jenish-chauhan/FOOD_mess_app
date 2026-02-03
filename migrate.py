import sys
import os
import pymysql
from config import DB_CONFIG

# Ensure we use the correct cursor class
from pymysql.cursors import DictCursor

def get_db_connection():
    try:
        connection = pymysql.connect(
            host=DB_CONFIG['host'],
            port=DB_CONFIG['port'],
            user=DB_CONFIG['user'],
            password=DB_CONFIG['password'],
            database=DB_CONFIG['database'],
            charset=DB_CONFIG.get('charset', 'utf8mb4'),
            cursorclass=DictCursor
        )
        return connection
    except Exception as e:
        print(f"Migration: Error connecting to DB: {e}")
        return None

def run_migrations():
    print("Migration: Starting schema check...")
    conn = get_db_connection()
    if not conn:
        print("Migration: Could not connect to database. Aborting.")
        sys.exit(1)

    try:
        with conn.cursor() as cursor:
            # Check for session_token column in admin table
            print("Migration: Checking 'admin' table for 'session_token' column...")
            cursor.execute("SHOW COLUMNS FROM admin LIKE 'session_token'")
            if not cursor.fetchone():
                print("Migration: Column 'session_token' missing. Applying changes...")
                try:
                    # Add columns
                    cursor.execute("ALTER TABLE admin ADD COLUMN session_token VARCHAR(128) NULL AFTER password")
                    print("Migration: Added 'session_token' column.")
                    
                    cursor.execute("ALTER TABLE admin ADD COLUMN session_token_created_at DATETIME NULL AFTER session_token")
                    print("Migration: Added 'session_token_created_at' column.")
                    
                    # Add index
                    cursor.execute("CREATE INDEX idx_admin_session_token ON admin (session_token)")
                    print("Migration: Added index 'idx_admin_session_token'.")
                    
                    conn.commit()
                    print("Migration: Successfully applied all changes.")
                except Exception as e_alter:
                    print(f"Migration: Error executing ALTER statements: {e_alter}")
                    # Don't exit 1, maybe partial success? But typically we might want to retry or fail hard.
                    # For now, print error and continue, effectively failing the migration but letting app try to start.
            else:
                 print("Migration: 'session_token' column already exists. No changes needed.")
    except Exception as e:
        print(f"Migration: Unexpected error: {e}")
        sys.exit(1)
    finally:
        conn.close()

if __name__ == "__main__":
    run_migrations()
