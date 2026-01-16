"""
Database Setup Script for Track & Serve Application
This script helps set up the MySQL database for local development.

Usage:
    python database_setup.py

Prerequisites:
    - XAMPP MySQL server running on localhost:3306
    - MySQL root user with empty password (default XAMPP setup)
    - PyMySQL installed (pip install pymysql)
"""

import pymysql
import sys
import os

# Database configuration (matches config.py)
DB_CONFIG = {
    'host': 'localhost',
    'port': 3306,
    'user': 'root',
    'password': '',  # Default XAMPP MySQL password
    'database': 'track_serve'
}

def create_database():
    """Create the track_serve database if it doesn't exist"""
    try:
        # Connect without specifying database
        connection = pymysql.connect(
            host=DB_CONFIG['host'],
            port=DB_CONFIG['port'],
            user=DB_CONFIG['user'],
            password=DB_CONFIG['password']
        )
        
        with connection.cursor() as cursor:
            # Create database if it doesn't exist
            cursor.execute(f"CREATE DATABASE IF NOT EXISTS `{DB_CONFIG['database']}` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci")
            print(f"[OK] Database '{DB_CONFIG['database']}' created or already exists")
        
        connection.close()
        return True
    except Exception as e:
        print(f"[ERROR] Error creating database: {e}")
        return False

def import_sql_file(sql_file_path):
    """Import SQL file into the database"""
    if not os.path.exists(sql_file_path):
        print(f"✗ SQL file not found: {sql_file_path}")
        return False
    
    try:
        connection = pymysql.connect(
            host=DB_CONFIG['host'],
            port=DB_CONFIG['port'],
            user=DB_CONFIG['user'],
            password=DB_CONFIG['password'],
            database=DB_CONFIG['database'],
            charset='utf8mb4'
        )
        
        print(f"[INFO] Importing {sql_file_path}...")
        
        with connection.cursor() as cursor:
            # Read SQL file
            with open(sql_file_path, 'r', encoding='utf-8') as sql_file:
                sql_content = sql_file.read()
            
            # Execute the entire SQL file using executemany approach
            # Split by semicolon but handle multi-line statements better
            # Remove comments first
            lines = sql_content.split('\n')
            cleaned_lines = []
            for line in lines:
                # Remove single-line comments
                if '--' in line:
                    line = line[:line.index('--')]
                cleaned_lines.append(line)
            cleaned_content = '\n'.join(cleaned_lines)
            
            # Split by semicolon
            statements = [s.strip() for s in cleaned_content.split(';') if s.strip() and len(s.strip()) > 10]
            
            executed = 0
            errors = 0
            for i, statement in enumerate(statements):
                try:
                    cursor.execute(statement)
                    executed += 1
                    if (i + 1) % 50 == 0:
                        print(f"  Progress: {executed} statements executed...")
                except pymysql.Error as e:
                    error_msg = str(e).lower()
                    # Ignore common non-critical errors
                    if 'already exists' not in error_msg and 'duplicate' not in error_msg and 'unknown table' not in error_msg:
                        if errors < 10:  # Only show first 10 errors
                            print(f"  Warning [{i+1}]: {str(e)[:120]}")
                        errors += 1
            
            connection.commit()
            print(f"[OK] Successfully executed {executed} SQL statements from {sql_file_path}")
            if errors > 0:
                print(f"[INFO] {errors} statements had warnings (may be non-critical)")
        
        connection.close()
        return True
    except Exception as e:
        print(f"[ERROR] Error importing SQL file: {e}")
        return False

def verify_tables():
    """Verify that required tables exist in the database"""
    required_tables = [
        'admin',
        'hostel_student',
        'non_hostel_student',
        'faculty',
        'breakfast',
        'lunch',
        'dinner',
        'payments',
        'grocery_vegetable_management'
    ]
    
    try:
        connection = pymysql.connect(
            host=DB_CONFIG['host'],
            port=DB_CONFIG['port'],
            user=DB_CONFIG['user'],
            password=DB_CONFIG['password'],
            database=DB_CONFIG['database']
        )
        
        with connection.cursor() as cursor:
            cursor.execute("SHOW TABLES")
            existing_tables = [table[0] for table in cursor.fetchall()]
            
            print("\n[INFO] Database Tables Status:")
            for table in required_tables:
                if table in existing_tables:
                    # Get row count
                    cursor.execute(f"SELECT COUNT(*) as count FROM `{table}`")
                    count = cursor.fetchone()[0]
                    print(f"  [OK] {table}: {count} rows")
                else:
                    print(f"  [MISSING] {table}: NOT FOUND")
            
            print(f"\n  Total tables in database: {len(existing_tables)}")
        
        connection.close()
        return True
    except Exception as e:
        print(f"[ERROR] Error verifying tables: {e}")
        return False

def main():
    """Main setup function"""
    print("=" * 60)
    print("Track & Serve Database Setup")
    print("=" * 60)
    print()
    
    # Step 1: Create database
    print("Step 1: Creating database...")
    if not create_database():
        print("\n[ERROR] Database setup failed. Please check your MySQL connection.")
        sys.exit(1)
    print()
    
    # Step 2: Import SQL files
    sql_files = ['track_serve_Final.sql', 'track_serve.sql']
    
    print("Step 2: Importing SQL files...")
    imported = False
    for sql_file in sql_files:
        if os.path.exists(sql_file):
            if import_sql_file(sql_file):
                imported = True
                print()
        else:
            print(f"[WARNING] {sql_file} not found, skipping...")
    
    if not imported:
        print("[WARNING] No SQL files were imported. Please import manually via phpMyAdmin.")
    print()
    
    # Step 3: Verify tables
    print("Step 3: Verifying database structure...")
    verify_tables()
    print()
    
    print("=" * 60)
    print("[SUCCESS] Database setup complete!")
    print("=" * 60)
    print("\nYou can now run the Flask application with: python main.py")

if __name__ == '__main__':
    main()
