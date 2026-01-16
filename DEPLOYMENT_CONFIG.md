# Cloud Deployment Configuration

## Database Configuration Updated

The application has been configured for cloud deployment with the following database credentials:

### Updated Configuration (`config.py`)

```python
DB_CONFIG = {
    'host': 'localhost',
    'port': 3306,
    'user': 'trackserve',
    'password': 'StrongPassword123',
    'database': 'track_serve',
    'charset': 'utf8mb4',
    'cursorclass': 'DictCursor'
}
```

## Files Updated

### 1. `config.py`
- ✅ Updated with new database credentials
- ✅ User: `trackserve`
- ✅ Password: `StrongPassword123`

### 2. `main.py`
- ✅ Fallback configuration updated to match new credentials
- ✅ All database connections use `config.py` via `get_db_connection()`
- ✅ No hardcoded credentials in main application code

### 3. `database_setup.py`
- ✅ Now imports configuration from `config.py`
- ✅ Fallback configuration updated to match new credentials
- ✅ Can be used for cloud database setup

## Cloud Deployment Checklist

### Before Deployment

1. **Create Database User:**
   ```sql
   CREATE USER 'trackserve'@'%' IDENTIFIED BY 'StrongPassword123';
   GRANT ALL PRIVILEGES ON track_serve.* TO 'trackserve'@'%';
   FLUSH PRIVILEGES;
   ```

2. **Update Host (if needed):**
   - If your cloud database is not on `localhost`, update `host` in `config.py`
   - Common cloud hosts: `your-db-host.cloudprovider.com`

3. **Database Setup:**
   ```bash
   python database_setup.py
   ```
   This will create the database and import all tables.

4. **Environment Variables (Optional):**
   For better security, you can use environment variables. Uncomment the environment variable section in `config.py`:
   ```python
   import os
   DB_CONFIG = {
       'host': os.getenv('DB_HOST', 'localhost'),
       'port': int(os.getenv('DB_PORT', 3306)),
       'user': os.getenv('DB_USER', 'trackserve'),
       'password': os.getenv('DB_PASSWORD', 'StrongPassword123'),
       'database': os.getenv('DB_NAME', 'track_serve'),
       'charset': 'utf8mb4',
       'cursorclass': 'DictCursor'
   }
   ```

### Security Recommendations

1. **Use Environment Variables:**
   - Set `DB_PASSWORD` as an environment variable
   - Never commit passwords to version control

2. **Database User Permissions:**
   - Grant only necessary permissions
   - Use a dedicated user (not root)

3. **Connection Security:**
   - Use SSL for database connections if available
   - Restrict database access by IP if possible

4. **Update Secret Key:**
   - Change `app.secret_key` in `main.py` for production
   - Use a strong, random secret key

## Testing Connection

After deployment, test the connection:

1. **Start the application:**
   ```bash
   python main.py
   ```

2. **Check for errors:**
   - If connection fails, check:
     - Database server is running
     - User credentials are correct
     - Database exists
     - Network/firewall allows connection
     - Host address is correct (not localhost if remote)

3. **Verify tables:**
   ```bash
   python database_setup.py
   ```
   This will show table status and verify connection.

## Current Status

✅ All database connections use centralized `config.py`
✅ No hardcoded credentials in application code
✅ Ready for cloud deployment
✅ Database setup script updated

## Notes

- The application uses **PyMySQL** for all database connections
- All routes use `get_db_connection()` which reads from `config.py`
- The `mysql.connector` import in `main.py` is not used (can be removed if desired)
- Configuration is centralized in one file for easy updates

---

**Last Updated:** Configuration updated for cloud deployment
