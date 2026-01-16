# Database Setup Instructions for Track & Serve Application

This guide will help you set up the MySQL database for the Track & Serve application in your local XAMPP environment.

## Prerequisites

1. **XAMPP installed and running**

   - MySQL service must be running in XAMPP Control Panel
   - Default MySQL port: 3306
   - Default MySQL user: `root`
   - Default MySQL password: (empty)

2. **Python dependencies installed**
   ```bash
   pip install -r requirements.txt
   ```

## Quick Setup (Automated)

### Option 1: Using the Setup Script (Recommended)

1. **Run the database setup script:**

   ```bash
   python database_setup.py
   ```

   This script will:

   - Create the `track_serve` database if it doesn't exist
   - Import SQL files automatically
   - Verify that all required tables exist

2. **If the script completes successfully, you're done!** Skip to "Verification" section.

### Option 2: Manual Setup via phpMyAdmin

If you prefer to set up manually or the script fails:

1. **Start XAMPP Services:**

   - Open XAMPP Control Panel
   - Start Apache and MySQL services

2. **Access phpMyAdmin:**

   - Open browser and go to: `http://localhost/phpmyadmin`
   - Login with:
     - Username: `root`
     - Password: (leave empty)

3. **Create Database:**

   - Click "New" in the left sidebar
   - Database name: `track_serve`
   - Collation: `utf8mb4_general_ci`
   - Click "Create"

4. **Import SQL Files:**

   - Select the `track_serve` database from the left sidebar
   - Click the "Import" tab
   - Click "Choose File" and select `track_serve_Final.sql`
   - Click "Go" at the bottom
   - Wait for import to complete
   - Repeat for `track_serve.sql` (if you want to import both)

   **Note:** `track_serve_Final.sql` is the more complete file and recommended. You can import both, but `track_serve_Final.sql` should be imported first.

## Configuration

### Database Configuration File

The application uses `config.py` for database connection settings. The default configuration is:

```python
DB_CONFIG = {
    'host': 'localhost',
    'port': 3306,
    'user': 'root',
    'password': '',  # Empty for default XAMPP
    'database': 'track_serve',
    'charset': 'utf8mb4'
}
```

### Customizing Database Credentials

If your MySQL setup uses different credentials:

1. **Edit `config.py`:**

   ```python
   DB_CONFIG = {
       'host': 'localhost',
       'port': 3306,
       'user': 'your_username',
       'password': 'your_password',
       'database': 'track_serve',
       'charset': 'utf8mb4'
   }
   ```

2. **Or use environment variables (for production):**
   - Uncomment the environment variable section in `config.py`
   - Set environment variables:
     ```bash
     export DB_HOST=localhost
     export DB_PORT=3306
     export DB_USER=root
     export DB_PASSWORD=your_password
     export DB_NAME=track_serve
     ```

## Verification

### 1. Check Database Connection

Run the Flask application:

```bash
python main.py
```

If the connection is successful, you should see the Flask server start without database errors.

### 2. Verify Tables

You can verify tables exist using phpMyAdmin or the setup script:

**Using phpMyAdmin:**

- Go to `http://localhost/phpmyadmin`
- Select `track_serve` database
- Check that these tables exist:
  - `admin`
  - `hostel_student`
  - `non_hostel_student`
  - `faculty`
  - `breakfast`
  - `lunch`
  - `dinner`
  - `payments`
  - `grocery_vegetable_management`
  - Plus many date-based dynamic tables (e.g., `05_03_2025_faculty_dinner`)

**Using Python:**

```bash
python database_setup.py
```

The script will show table verification at the end.

### 3. Test Application

1. Start the Flask app: `python main.py`
2. Open browser: `http://localhost:5000`
3. Try logging in with test credentials:
   - Admin: Phone: `7862017545`, Password: `0506`
   - Faculty: ID: `D24AIML079`, Password: `0506`

## Troubleshooting

### Error: "Access denied for user 'root'@'localhost'"

**Solution:**

- Check if MySQL is running in XAMPP Control Panel
- Verify password in `config.py` matches your MySQL root password
- If you set a password for MySQL root, update `config.py`

### Error: "Unknown database 'track_serve'"

**Solution:**

- Run `python database_setup.py` to create the database
- Or create it manually in phpMyAdmin

### Error: "Table already exists"

**Solution:**

- This is normal if you're re-importing SQL files
- The application will work fine with existing tables
- If you want a fresh start, drop the database and recreate it

### Error: "Can't connect to MySQL server"

**Solution:**

1. Check XAMPP Control Panel - MySQL must be running (green)
2. Verify port 3306 is not blocked by firewall
3. Check if another MySQL instance is running on a different port

### Import Fails in phpMyAdmin

**Solution:**

1. Check file size - if very large, increase `upload_max_filesize` in php.ini
2. Import in smaller chunks if needed
3. Use command line MySQL import:
   ```bash
   mysql -u root -p track_serve < track_serve_Final.sql
   ```

## Database Schema Overview

### Main Tables

- **admin**: Admin user accounts
- **hostel_student**: Hostel student records with fee payment status
- **non_hostel_student**: Non-hostel student records with balance
- **faculty**: Faculty member records with balance
- **breakfast/lunch/dinner**: Weekly menu schedules
- **payments**: Payment transaction records
- **grocery_vegetable_management**: Grocery and vegetable management records

### Dynamic Tables

The application creates date-based tables dynamically for meal tracking:

- Format: `DD_MM_YYYY_user_type_meal_type`
- Example: `05_03_2025_hostel_student_breakfast`

## Running the Application

After successful database setup:

```bash
python main.py
```

The application will be available at:

- **URL:** http://localhost:5000
- **Debug Mode:** Enabled (auto-reload on code changes)

## Production Considerations

For production deployment:

1. **Change default credentials** in `config.py`
2. **Use environment variables** for sensitive data
3. **Set a strong MySQL root password**
4. **Create a dedicated database user** with limited privileges
5. **Enable SSL** for database connections if needed
6. **Regular backups** of the database

## Support

If you encounter issues:

1. Check XAMPP MySQL logs: `C:\xampp\mysql\data\*.err`
2. Check Flask application console for error messages
3. Verify all prerequisites are met
4. Ensure SQL files are not corrupted

---

**Last Updated:** Database setup configured for XAMPP localhost development
