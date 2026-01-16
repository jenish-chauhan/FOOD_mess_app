# How to Run Track & Serve Application Locally

## Quick Start Guide

### Step 1: Prerequisites Check

1. **XAMPP Running:**

   - Open XAMPP Control Panel
   - Start **Apache** and **MySQL** services
   - Both should show green "Running" status

2. **Python Installed:**

   ```bash
   python --version
   ```

   Should show Python 3.x

3. **Dependencies Installed:**
   ```bash
   pip install -r requirements.txt
   ```

### Step 2: Database Setup

**Option A: Automated Setup (Recommended)**

```bash
python database_setup.py
```

**Option B: Manual Setup**

1. Open phpMyAdmin: http://localhost/phpmyadmin
2. Create database: `track_serve`
3. Import: `track_serve_Final.sql`

See `DATABASE_SETUP_INSTRUCTIONS.md` for detailed instructions.

### Step 3: Configure Database (if needed)

Edit `config.py` if your MySQL credentials differ from defaults:

- Default: user=`root`, password=`` (empty), host=`localhost`, port=`3306`

### Step 4: Run the Application

```bash
python main.py
```

### Step 5: Access the Application

Open your browser and navigate to:

- **URL:** http://localhost:5000
- **Home Page:** http://localhost:5000/

## Default Test Credentials

### Admin Login

- **Phone:** 7862017545
- **Password:** 0506
- **URL:** http://localhost:5000/adminlogin

### Faculty Login

- **Faculty ID:** D24AIML079
- **Password:** 0506
- **URL:** http://localhost:5000/faculty_login

## Application Features

Once running, you can access:

1. **Home Page:** http://localhost:5000/
2. **Admin Dashboard:** After admin login
3. **User Selection:** http://localhost:5000/user
4. **Menu View:** http://localhost:5000/menu_show
5. **Weekly Menu:** http://localhost:5000/weekly_data

## Troubleshooting

### Port 5000 Already in Use

```bash
# Windows: Find and kill process
netstat -ano | findstr :5000
taskkill /PID <PID> /F

# Or change port in main.py:
app.run(debug=True, port=5001)
```

### Database Connection Error

1. Verify MySQL is running in XAMPP
2. Check `config.py` credentials
3. Run `python database_setup.py` to verify setup

### Module Not Found Error

```bash
pip install -r requirements.txt
```

## Development Mode

The application runs in debug mode by default:

- **Auto-reload:** Changes to Python files trigger automatic restart
- **Debug Console:** Error details shown in browser
- **Hot Reload:** No need to manually restart server

## Stopping the Application

Press `Ctrl+C` in the terminal where the application is running.

## Next Steps

- Review `DATABASE_SETUP_INSTRUCTIONS.md` for database details
- Check `RESPONSIVE_DESIGN_SUMMARY.md` for UI improvements
- Customize `config.py` for your environment

---

**Ready to go!** Your application should now be running at http://localhost:5000
