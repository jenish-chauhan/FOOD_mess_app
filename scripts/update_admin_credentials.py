"""
Utility script to ensure:
- admin table has session_token columns required for single active session
- default admin credentials are set to the desired values

Safe to run multiple times (idempotent).
"""

import pymysql
from pymysql.cursors import DictCursor

try:
    from config import DB_CONFIG
except ImportError:
    DB_CONFIG = {
        "host": "localhost",
        "port": 3306,
        "user": "root",
        "password": "",
        "database": "track_serve",
        "charset": "utf8mb4",
    }


def get_connection():
    return pymysql.connect(
        host=DB_CONFIG["host"],
        port=DB_CONFIG["port"],
        user=DB_CONFIG["user"],
        password=DB_CONFIG["password"],
        database=DB_CONFIG["database"],
        charset=DB_CONFIG.get("charset", "utf8mb4"),
        cursorclass=DictCursor,
    )


def ensure_admin_session_columns(conn):
    """Add session_token columns to admin table if missing."""
    with conn.cursor() as cursor:
        cursor.execute("SHOW COLUMNS FROM admin LIKE 'session_token'")
        has_token = cursor.fetchone() is not None

        if not has_token:
            cursor.execute(
                """
                ALTER TABLE admin
                  ADD COLUMN session_token VARCHAR(128) NULL AFTER password,
                  ADD COLUMN session_token_created_at DATETIME NULL AFTER session_token
                """
            )
            print("Added session_token columns to admin table.")
        else:
            # Make sure created_at column exists as well
            cursor.execute("SHOW COLUMNS FROM admin LIKE 'session_token_created_at'")
            has_created_at = cursor.fetchone() is not None
            if not has_created_at:
                cursor.execute(
                    "ALTER TABLE admin ADD COLUMN session_token_created_at DATETIME NULL AFTER session_token"
                )
                print("Added session_token_created_at column to admin table.")


def update_default_admin(conn):
    """
    Set the default admin credentials:
    - phone_no: 9510923323  (this is what the login form uses)
    - email_id: 90@09HOPQW  (stored for reference)
    - password: NoN@IT732
    """
    new_phone = "9510923323"
    new_email = "90@09HOPQW"
    new_password = "NoN@IT732"

    with conn.cursor() as cursor:
        cursor.execute("SELECT COUNT(*) AS cnt FROM admin WHERE id = 1")
        row = cursor.fetchone()
        if not row or row["cnt"] == 0:
            # Create default admin row if it doesn't exist
            cursor.execute(
                """
                INSERT INTO admin (id, fullname, phone_no, email_id, password)
                VALUES (1, %s, %s, %s, %s)
                """,
                ("Admin User", new_phone, new_email, new_password),
            )
            print("Inserted default admin with new credentials.")
        else:
            cursor.execute(
                """
                UPDATE admin
                SET phone_no=%s,
                    email_id=%s,
                    password=%s
                WHERE id=1
                """,
                (new_phone, new_email, new_password),
            )
            print("Updated existing admin credentials.")


def main():
    conn = get_connection()
    try:
        ensure_admin_session_columns(conn)
        update_default_admin(conn)
        conn.commit()
        print("Admin table and credentials are up to date.")
    finally:
        conn.close()


if __name__ == "__main__":
    main()

