from flask import Flask, render_template, request, redirect, url_for, flash,session,jsonify, send_file
import pymysql.cursors
from pymysql.cursors import DictCursor
import random
from twilio.rest import Client
from datetime import date, datetime
import mysql.connector
import qrcode
import io
import subprocess
import pandas as pd
from fpdf import FPDF
from io import BytesIO
from reportlab.lib.pagesizes import letter
from reportlab.lib import colors
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle, Paragraph, Spacer
from reportlab.lib.styles import getSampleStyleSheet
from collections import defaultdict, OrderedDict

# Import database configuration
try:
    from config import DB_CONFIG
except ImportError:
    # Fallback configuration if config.py doesn't exist
    DB_CONFIG = {
        'host': 'localhost',
        'port': 3306,
        'user': 'root',
        'password': '',
        'database': 'track_serve',
        'charset': 'utf8mb4',
        'cursorclass': 'DictCursor'
    }

app = Flask(__name__)
app.secret_key = 'your_secret_key'  # Required for flash messages

# Twilio Configuration (Replace with actual credentials)
TWILIO_ACCOUNT_SID = 'AC4e0aa03e7f5f64def50de992f6cca778'
TWILIO_AUTH_TOKEN = '23c559e49fd4bb4478561b1ce5a295df'
TWILIO_PHONE_NUMBER = '+18152835602'

# Admin verification phone number (Fixed)
ADMIN_PHONE_NUMBER = '+917862017545'

# Temporary storage for OTPs (Dictionary)
otp_storage = {}

# Function to connect to MySQL
def get_db_connection():
    """
    Establishes a connection to the MySQL database using configuration from config.py
    Returns: pymysql connection object or None if connection fails
    """
    try:
        # Prepare connection parameters
        connection_params = {
            'host': DB_CONFIG['host'],
            'port': DB_CONFIG['port'],
            'user': DB_CONFIG['user'],
            'password': DB_CONFIG['password'],
            'database': DB_CONFIG['database'],
            'charset': DB_CONFIG.get('charset', 'utf8mb4'),
            'cursorclass': DictCursor
        }
        
        connection = pymysql.connect(**connection_params)
        return connection
    except pymysql.MySQLError as e:
        print(f"Error connecting to MySQL: {e}")
        print(f"Attempted connection to: {DB_CONFIG['host']}:{DB_CONFIG['port']}/{DB_CONFIG['database']}")
        return None
    except Exception as e:
        print(f"Unexpected error during database connection: {e}")
        return None

# Function to send OTP via Twilio
def send_otp(fullname, phone, email):
    otp = random.randint(100000, 999999)  # Generate a 6-digit OTP

    try:
        client = Client(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
        message_body = f"🚀 New Signup Request:\n👤 Name: {fullname}\n📞 Phone: {phone}\n✉ Email: {email}\n🔢 OTP: {otp}"

        message = client.messages.create(
            body=message_body,
            from_=TWILIO_PHONE_NUMBER,
            to=ADMIN_PHONE_NUMBER
        )
        
        print(f"OTP {otp} sent successfully to {ADMIN_PHONE_NUMBER}")
        print(f"Message SID: {message.sid}")

        # Store OTP in memory
        otp_storage['admin_otp'] = otp
    except Exception as e:
        print(f"Failed to send OTP: {e}")

@app.route('/')
def home():
    return render_template('try.html')

@app.route('/adminlogin', methods=['GET', 'POST'])
def adminlogin():
    if request.method == 'POST':
        phone_no = request.form['phone_no']
        password = request.form['password']

        connection = get_db_connection()
        if connection:
            try:
                cursor = connection.cursor()
                query = "SELECT * FROM admin WHERE phone_no = %s AND password = %s"
                cursor.execute(query, (phone_no, password))
                user = cursor.fetchone()

                if user:
                    return redirect(url_for('admin_dashboard'))  # Successful login
                else:
                    return render_template('admin_login.html', error="Invalid username or password")

            except pymysql.MySQLError as e:
                print(f"Database error: {e}")
                return render_template('admin_login.html', error="Error while checking credentials")
            finally:
                cursor.close()
                connection.close()
        else:
            return render_template('admin_login.html', error="Failed to connect to the database")

    return render_template('admin_login.html')

@app.route('/admin_dashboard')
def admin_dashboard():
    return render_template("admin_dashboard.html")

@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        fullname = request.form['fullname']
        phone = request.form['phone_no']
        email = request.form['email']
        password = request.form['password']

        # Send OTP with user details to the admin's registered phone
        send_otp(fullname, phone, email)

        # Temporarily store admin details
        otp_storage['admin_details'] = {'fullname': fullname, 'phone': phone, 'email': email, 'password': password}

        flash("OTP sent to admin's registered phone. Please verify.", "info")
        return redirect(url_for('verify_otp'))

    return render_template('signup.html')

@app.route('/verify_otp', methods=['GET', 'POST'])
def verify_otp():
    if request.method == 'POST':
        entered_otp = request.form['otp']

        # Validate OTP
        if 'admin_otp' in otp_storage and int(entered_otp) == otp_storage['admin_otp']:
            connection = get_db_connection()
            if connection:
                try:
                    cursor = connection.cursor()
                    admin_data = otp_storage['admin_details']

                    sql = "INSERT INTO admin (fullname, phone_no, email_id, password) VALUES (%s, %s, %s, %s)"
                    cursor.execute(sql, (admin_data['fullname'], admin_data['phone'], admin_data['email'], admin_data['password']))
                    connection.commit()


                except pymysql.MySQLError as e:
                    print(f"Database error: {e}")
                    flash("Database error occurred. Try again!", "danger")

                finally:
                    cursor.close()
                    connection.close()

            # Remove OTP and admin details after successful signup
            del otp_storage['admin_otp']
            del otp_storage['admin_details']

            return redirect(url_for('home'))
        else:
            flash("Invalid OTP. Please try again.", "danger")

    return render_template('verify_otp.html')


@app.route("/user", methods=['GET', 'POST'])
def user():
    if request.method == "POST":
        selected_option = request.form.get("options")

        if selected_option == "hosteller":
            return redirect(url_for("hosteller_login"))
        elif selected_option == "non_hosteller":
            return redirect(url_for("non_hosteller_login"))
        elif selected_option == "faculty":
            return redirect(url_for("faculty_login"))

    return render_template('user.html')

@app.route("/hosteller_student_login")
def hosteller_login():
    return render_template("hosteller_student_login.html")

@app.route("/non_hosteller_login")
def non_hosteller_login():
    return render_template("non_hostel_student_login.html")

@app.route("/faculty_login")
def faculty_login():
    return render_template("faculty_login.html")

@app.route("/hosteller_student_signup", methods=['GET', 'POST'])
def hosteller_student_signup():
    if request.method == "POST":
        student_id = request.form["student_id"]
        fullname = request.form["fullname"]
        phone_no = request.form["phone_no"]
        email = request.form["email"]
        hostel = request.form["options"]
        room_no = request.form["room_no"]
        password = request.form["password"]

        try:
            connection = get_db_connection()
            cursor = connection.cursor()

            insert_query = """
            INSERT INTO hostel_student(student_id, fullname, phone_no, email, hostel, room_no, password)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
            """

            cursor.execute(insert_query, (student_id, fullname, phone_no, email, hostel, room_no, password))
            connection.commit()

            cursor.close()
            return render_template('try.html')

        except pymysql.MySQLError as e:
            return f"Error: {str(e)}"

    return render_template('hosteller_student_signup.html')

@app.route('/hostelerstudentlogin', methods=['GET', 'POST'])
def hostelerstudentlogin():
    if request.method == 'POST':
        student_id = request.form.get('id')  # Get student ID from form
        password = request.form.get('password')

        connection = get_db_connection()
        if connection:
            try:
                cursor = connection.cursor()
                query = "SELECT * FROM hostel_student WHERE student_id = %s AND password = %s"
                cursor.execute(query, (student_id, password))
                user = cursor.fetchone()

                if user:
                    session["student_id"] = user["student_id"]  # ✅ Fix here
                    return render_template('hostel_student_dashboard.html', student=user)  # Pass student details
                else:
                    return "Invalid username or password"

            finally:
                cursor.close()
                connection.close()
        else:
            return render_template('hosteller_login.html', error="Failed to connect to the database")

    return render_template('hosteller_login.html')


@app.route('/hostelerstudentdeshboard', methods=['GET', 'POST'])
def hostelerstudentdeshboard():
    if "student_id" not in session:
        return redirect(url_for("hosteller_student_login"))

    student_id = session["student_id"]
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM hostel_student WHERE id=%s", (student_id,))
    student = cursor.fetchone()
    conn.close()

    return render_template("hostel_student_dashboard.html", student=student)

@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('user'))

@app.route('/non_hosteller_student_signup', methods=['GET', 'POST'])
def non_hosteller_student_signup():
    if request.method == "POST":
        student_id = request.form["student_id"]
        fullname = request.form["fullname"]
        phone_no = request.form["phone_no"]
        email = request.form["email"]
        password = request.form["password"]

        try:
            connection = get_db_connection()
            cursor = connection.cursor()

            insert_query = """
            INSERT INTO non_hostel_student(student_id, fullname, phone_no, email, password)
            VALUES (%s, %s, %s, %s, %s)
            """

            cursor.execute(insert_query, (student_id, fullname, phone_no, email, password))
            connection.commit()

            cursor.close()
            return render_template('try.html')

        except pymysql.MySQLError as e:
            return f"Error: {str(e)}"
    return render_template('non_hostel_student_signup.html')

@app.route('/nonhostelerstudentlogin', methods=['GET', 'POST'])
def nonhostelerstudentlogin():
    if request.method == 'POST':
        student_id = request.form.get('id')  # Get student ID from form
        password = request.form.get('password')
        print(student_id)

        connection = get_db_connection()
        if connection:
            try:
                cursor = connection.cursor()
                query = "SELECT * FROM non_hostel_student WHERE student_id = %s AND password = %s"
                cursor.execute(query, (student_id, password))
                user = cursor.fetchone()

                if user:
                    session["student_id"] = user["student_id"]  # ✅ Fix here
                    return render_template('non_hostel_student_dashboard.html', student=user)  # Pass student details
                else:
                    return render_template('non_hostel_student_login.html', error="Invalid username or password")

            finally:
                cursor.close()
                connection.close()
        else:
            return render_template('non_hostel_student_login.html', error="Failed to connect to the database")

    return render_template('non_hostel_student_login.html')


@app.route('/nonhostelerstudentdeshboard', methods=['GET', 'POST'])
def nonhostelerstudentdeshboard():
    if "student_id" not in session:
        return redirect(url_for("non_hosteller_student_login"))

    student_id = session["student_id"]
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM non_hostel_student WHERE id=%s", (student_id,))
    student = cursor.fetchone()
    conn.close()

    return render_template("non_hostel_student_dashboard.html", student=student)

@app.route("/faculty_signup", methods=['GET', 'POST'])
def faculty_signup():
    if request.method == "POST":
        faculty_id = request.form["faculty_id"]
        fullname = request.form["fullname"]
        phone_no = request.form["phone_no"]
        email = request.form["email"]
        password = request.form["password"]

        try:
            connection = get_db_connection()
            cursor = connection.cursor()

            insert_query = """
            INSERT INTO faculty(faculty_id, fullname, phone_no, email, password)
            VALUES (%s, %s, %s, %s, %s)
            """

            cursor.execute(insert_query, (faculty_id, fullname, phone_no, email, password))
            connection.commit()

            cursor.close()
            return render_template('try.html')

        except pymysql.MySQLError as e:
            return f"Error: {str(e)}"

    return render_template('faculty_signup.html')

@app.route('/facultylogin', methods=['GET', 'POST'])
def facultylogin():
    if request.method == 'POST':
        faculty_id = request.form.get('faculty_id')
        password = request.form.get('password')

        connection = get_db_connection()
        cursor = None  # ✅ Initialize cursor to avoid UnboundLocalError

        if connection:
            try:
                cursor = connection.cursor(DictCursor)  # ✅ Use DictCursor for dictionary output
                query = "SELECT * FROM faculty WHERE faculty_id = %s AND password = %s"
                cursor.execute(query, (faculty_id, password))
                user = cursor.fetchone()

                if user:
                    session["f_id"] = user.get("f_id") or user.get("id")  # ✅ Handle missing key safely
                    return render_template('faculty_dashboard.html', student=user)
                else:
                    return render_template('faculty_login.html', error="Invalid username or password")
            except Exception as e:
                return render_template('faculty_login.html', error=f"Database error: {str(e)}")
            finally:
                if cursor:
                    cursor.close()  # ✅ Close cursor only if it was initialized
                if connection:
                    connection.close()
        else:
            return render_template('faculty_login.html', error="Failed to connect to the database")

    return render_template('faculty_login.html')


@app.route('/facultydeshboard', methods=['GET', 'POST'])
def facultydeshboard():
    if "f_id" not in session:
        return redirect(url_for("faculty_login"))

    f_id = session["f_id"]
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM faculty WHERE id=%s", (f_id,))
    student = cursor.fetchone()
    conn.close()

    return render_template("faculty_dashboard.html", student=student)

@app.route('/menu_dashboard')
def menu_dashboard():
    return render_template('menu_dashboard.html')

@app.route('/add_menu')
def add_menu():
    return render_template('add_menu_dashboard.html')

@app.route('/add_breakfast_menu')
def add_breakfast_menu():
    return render_template('add_breakfast_menu.html')


@app.route('/')
def index():
    return render_template('add_menu_dashboard.html')

@app.route('/submit', methods=['POST'])
def submit():
    meal_type = request.form.get('meal_type')
    from_date = request.form.get("fromDate")
    to_date = request.form.get("toDate")

    print("From Date:", from_date)
    print("To Date:", to_date)

    # Fetch meal data for all days
    data = {
        'Monday': request.form.get('Monday'),
        'Tuesday': request.form.get('Tuesday'),
        'Wednesday': request.form.get('Wednesday'),
        'Thursday': request.form.get('Thursday'),
        'Friday': request.form.get('Friday'),
        'Saturday': request.form.get('Saturday'),
        'Sunday': request.form.get('Sunday')
    }

    # Identify the table to store meal data
    table_name = ""
    if meal_type == 'breakfast':
        table_name = "breakfast"
    elif meal_type == 'lunch':
        table_name = "lunch"
    elif meal_type == 'dinner':
        table_name = "dinner"

    if table_name:
        connection = get_db_connection()
        if connection:
            try:
                with connection.cursor() as cursor:
                    sql = f"""
                        INSERT INTO {table_name}
                        (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, from_date, to_date)
                        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
                    """
                    cursor.execute(sql, tuple(data.values()) + (from_date, to_date))
                    connection.commit()
                    print(f"Data successfully inserted into {table_name}")

                    return render_template("add_menu_dashboard.html")
            except Exception as e:
                print("Database Error:", e)
            finally:
                connection.close()

    return redirect(url_for('index'))

@app.route('/weakly_menu', methods=['GET', 'POST'])
def weakly_menu():
    connection = get_db_connection()
    try:
        with connection.cursor() as cursor:
            cursor.execute("SELECT * FROM breakfast")  # Change 'menu' to your table name
            menu_items = cursor.fetchall()
    finally:
        connection.close()
        
    return render_template("weakly_menu.html")

def get_today_menu():
    try:
        conn = get_db_connection()
        if conn is None:
            return [{"Meal_Type": "Error", "Today_Menu": "MySQL Connection not available"}]

        cursor = conn.cursor()

        today = date.today().strftime('%Y-%m-%d')
        print(f"Today's Date: {today}")  # Debugging

        # Fetch the Weekday Name
        cursor.execute("SELECT DAYNAME(%s) AS weekday", (today,))
        result = cursor.fetchone()

        if not result or "weekday" not in result:
            print("Error: Could not retrieve weekday from MySQL")
            return [{"Meal_Type": "Error", "Today_Menu": "Could not retrieve weekday"}]

        weekday = result["weekday"]
        #print(f"Today's Weekday: {weekday}")  # Debugging

        # Check if weekday column exists
        cursor.execute("SHOW COLUMNS FROM breakfast")
        breakfast_columns = [col["Field"] for col in cursor.fetchall()]
        #print(f"Breakfast Columns: {breakfast_columns}")

        if weekday not in breakfast_columns:
            print(f"Error: Column `{weekday}` does not exist in table.")
            return [{"Meal_Type": "Error", "Today_Menu": f"Column `{weekday}` not found"}]

        # Fetch Today's Menu
        query = f"""
        SELECT `{weekday}` AS Today_Menu, 'Breakfast' AS Meal_Type FROM breakfast 
        WHERE %s BETWEEN FROM_DATE AND TO_DATE
        UNION
        SELECT `{weekday}` AS Today_Menu, 'Lunch' AS Meal_Type FROM lunch 
        WHERE %s BETWEEN FROM_DATE AND TO_DATE
        UNION
        SELECT `{weekday}` AS Today_Menu, 'Dinner' AS Meal_Type FROM dinner 
        WHERE %s BETWEEN FROM_DATE AND TO_DATE;
        """
        cursor.execute(query, (today, today, today))
        result = cursor.fetchall()

        #print(f"Query Result: {result}")  # Debugging

        cursor.close()
        conn.close()

        return result if result else [{"Meal_Type": "No Data", "Today_Menu": "No menu available"}]
    
    except pymysql.MySQLError as e:
        print("SQL Error:", e)
        return [{"Meal_Type": "Error", "Today_Menu": str(e)}]

@app.route('/menu_show', methods=['GET', 'POST'])
def menu_show():
    today_menu = get_today_menu()
    print("Sent")
    return render_template("menu.html", menu=today_menu)

# Function to Fetch Weekly Data
def fetch_weekly_data():
    today_date = datetime.today().strftime('%Y-%m-%d')
    connection = get_db_connection()
    
    if not connection:
        return None, [], [], []

    try:
        with connection.cursor() as cursor:
            # Fetch date range
            cursor.execute(
                "SELECT FROM_DATE, TO_DATE FROM breakfast WHERE %s BETWEEN FROM_DATE AND TO_DATE LIMIT 1",
                (today_date,)
            )
            date_range = cursor.fetchone()

            # Fetch meals for the current week
            cursor.execute("SELECT * FROM breakfast WHERE %s BETWEEN FROM_DATE AND TO_DATE", (today_date,))
            breakfast_data = cursor.fetchall()

            cursor.execute("SELECT * FROM lunch WHERE %s BETWEEN FROM_DATE AND TO_DATE", (today_date,))
            lunch_data = cursor.fetchall()

            cursor.execute("SELECT * FROM dinner WHERE %s BETWEEN FROM_DATE AND TO_DATE", (today_date,))
            dinner_data = cursor.fetchall()

        return date_range, breakfast_data, lunch_data, dinner_data
    except Exception as e:
        print("Database Error:", e)
        return None, [], [], []
    finally:
        connection.close()

# Route to Show Weekly Menu
@app.route('/weekly_data', methods=['GET'])
def weekly_data():
    date_range, breakfast, lunch, dinner = fetch_weekly_data()
    return render_template('weakly_menu.html', date_range=date_range, breakfast=breakfast, lunch=lunch, dinner=dinner)

# PDF Generation Class
class CustomPDF(FPDF):
    def header(self):
        self.set_font("Arial", "B", 16)
        self.cell(0, 10, "CHARUSAT Canteen Menu", ln=True, align="C")
        self.ln(5)

# Function to Generate PDF
def generate_pdf(from_date, meals):
    file_name = f"{from_date}_Menu.pdf"
    
    pdf = CustomPDF(orientation="L", unit="mm", format="A4")
    pdf.set_auto_page_break(auto=True, margin=10)
    pdf.add_page()

    # Set Title
    pdf.set_font("Arial", "B", 12)
    pdf.cell(0, 10, f"Weekly Menu ({from_date})", ln=True, align="C")
    pdf.ln(5)

    # Column headers
    column_headers = ["Meal Type", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    column_widths = [40] + [35] * 7

    # Header Row
    pdf.set_font("Arial", "B", 11)
    for i, header in enumerate(column_headers):
        pdf.cell(column_widths[i], 10, header, border=1, align="C")
    pdf.ln()

    # Function to add meal rows dynamically
    def add_meal_row(meal_name, meal_data):
        pdf.set_font("Arial", size=10)
        pdf.cell(column_widths[0], 10, meal_name, border=1, align="C")

        for day in column_headers[1:]:
            pdf.cell(column_widths[column_headers.index(day)], 10, meal_data.get(day, ""), border=1, align="C")
        pdf.ln()

    print("Meals Data Received in generate_pdf:", meals)  # Debugging print

    for meal_type, meal_data in meals.items():
        if not isinstance(meal_data, dict):
            print(f"Error: Expected dict for {meal_type}, but got {type(meal_data)}")
            continue
        add_meal_row(meal_type, meal_data)

    pdf.output(file_name)
    return file_name

# Function to Extract Meal Data
def extract_meal_data(meal_data):
    if not meal_data:
        return {day: "" for day in ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]}

    # If meal_data is a list of dictionaries, use the first dictionary
    if isinstance(meal_data[0], dict):
        meal_dict = meal_data[0]
    elif isinstance(meal_data[0], tuple):  # Convert tuple to dictionary
        column_names = ["id", "from_date", "to_date", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        meal_dict = dict(zip(column_names, meal_data[0]))
    else:
        print(f"Unexpected meal_data format: {meal_data[0]}")
        return {day: "" for day in ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]}

    return {day: meal_dict.get(day, "") for day in ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]}

# Route to Download Weekly Menu as PDF
@app.route('/download_menu_pdf', methods=['GET'])
def download_menu_pdf():
    date_range, breakfast, lunch, dinner = fetch_weekly_data()

    if not date_range:
        return jsonify({"error": "No data found for the current week"}), 404

    # Ensure from_date is a string
    from_date = str(date_range["FROM_DATE"])
    to_date = str(date_range["TO_DATE"])

    print(f"Generating PDF for: {from_date} - {to_date}")  # Debugging print

    meals = {
        "Breakfast": extract_meal_data(breakfast),
        "Lunch": extract_meal_data(lunch),
        "Dinner": extract_meal_data(dinner),
    }

    pdf_file = generate_pdf(from_date, meals)  # Ensure from_date is a string
    return send_file(pdf_file, as_attachment=True)







# Fetch all menu data for deletion
@app.route('/delete_menu', methods=['GET'])
def delete_menu():
    try:
        connection = get_db_connection()
        with connection.cursor() as cursor:
            breakfast_query = "SELECT * FROM breakfast"
            lunch_query = "SELECT * FROM lunch"
            dinner_query = "SELECT * FROM dinner"

            cursor.execute(breakfast_query)
            breakfast_data = cursor.fetchall()

            cursor.execute(lunch_query)
            lunch_data = cursor.fetchall()

            cursor.execute(dinner_query)
            dinner_data = cursor.fetchall()

        return render_template('delete_menu.html', breakfast=breakfast_data, lunch=lunch_data, dinner=dinner_data)
    except Exception as e:
        print("Database Error:", e)
        return "Error fetching data"
    finally:
        if connection:
            connection.close()

# Handle menu deletion
@app.route('/delete_menu/<meal>/<int:menu_id>', methods=['POST'])
def delete_menu_item(meal, menu_id):
    try:
        connection = get_db_connection()
        with connection.cursor() as cursor:
            query = f"DELETE FROM {meal} WHERE id = %s"
            cursor.execute(query, (menu_id,))
            connection.commit()
        
        return jsonify({"message": "Menu item deleted successfully"}), 200
    except Exception as e:
        print("Error deleting menu item:", e)
        return jsonify({"error": "Failed to delete"}), 500
    finally:
        if connection:
            connection.close()

@app.route('/users_dashboard', methods=['GET'])
def users_dashboard():
    try:
        connection = get_db_connection()
        with connection.cursor() as cursor:
            # Fetch hostel students with fee columns
            cursor.execute("""
                SELECT student_id, fullname, phone_no, email, hostel, room_no, first, second, full 
                FROM hostel_student
            """)
            hostel_users = cursor.fetchall()

            # Determine fee status
            def has_paid(user):
                try:
                    if user['full'] not in (None, 'NULL') and float(user['full']) > 0:
                        return True
                    current_month = datetime.now().month
                    if 1 <= current_month <= 6:  # Jan–Jun → second
                        return user['second'] not in (None, 'NULL') and float(user['second']) > 0
                    else:  # Jul–Dec → first
                        return user['first'] not in (None, 'NULL') and float(user['first']) > 0
                except:
                    return False
                return False

            for user in hostel_users:
                user['has_paid'] = has_paid(user)

            # Fetch non-hostel students
            cursor.execute("SELECT student_id, fullname, phone_no, email, balance FROM non_hostel_student")
            nonhostel_users = cursor.fetchall()

            # Fetch faculty
            cursor.execute("SELECT faculty_id, fullname, phone_no, email, balance FROM faculty")
            faculty_users = cursor.fetchall()

        return render_template(
            'users_dashboard.html',
            hostel_users=hostel_users,
            hostel_count=len(hostel_users),
            nonhostel_users=nonhostel_users,
            nonhostel_count=len(nonhostel_users),
            faculty_users=faculty_users,
            faculty_count=len(faculty_users)
        )
    except Exception as e:
        print("Database Error:", e)
        return "Error fetching data"
    finally:
        if connection:
            connection.close()

            

def create_user_report():
    connection = get_db_connection()
    with connection.cursor() as cursor:
        cursor.execute("SELECT student_id, fullname, phone_no, email, hostel, room_no FROM hostel_student")
        hostel_users = cursor.fetchall()

        cursor.execute("SELECT student_id, fullname, phone_no, email, balance FROM non_hostel_student")
        nonhostel_users = cursor.fetchall()

        cursor.execute("SELECT faculty_id, fullname, phone_no, email, balance FROM faculty")
        faculty_users = cursor.fetchall()

    if not (hostel_users or nonhostel_users or faculty_users):
        return "No data available", 404

    output = BytesIO()
    writer = pd.ExcelWriter(output, engine="xlsxwriter")
    workbook = writer.book
    worksheet = workbook.add_worksheet("User Report")

    writer.sheets["User Report"] = worksheet

    title_format = workbook.add_format({'bold': True, 'font_size': 18, 'align': 'center', 'border': 1})
    section_format = workbook.add_format({'bold': True, 'font_size': 12, 'align': 'center', 'border': 1})
    header_format = workbook.add_format({'bold': True, 'align': 'center', 'border': 1})
    data_format = workbook.add_format({'align': 'center', 'border': 1})
    alternate_row_format = workbook.add_format({'align': 'center', 'border': 1, 'bg_color': '#F2F2F2'})

    worksheet.merge_range("A1:F1", "User Report", title_format)
    row = 2

    def write_section(title, data, columns, db_columns):
        nonlocal row
        worksheet.merge_range(row, 0, row, len(columns) - 1, title, section_format)
        row += 1

        for col_num, col_name in enumerate(columns):
            worksheet.write(row, col_num, col_name, header_format)
        row += 1

        if data:
            for idx, entry in enumerate(data, start=1):
                format_to_use = alternate_row_format if idx % 2 == 0 else data_format
                worksheet.write(row, 0, idx, format_to_use)  # Serial No.
                for col_num, db_col in enumerate(db_columns, start=1):
                    worksheet.write(row, col_num, entry.get(db_col, "N/A"), format_to_use)
                row += 1
        else:
            worksheet.merge_range(row, 0, row, len(columns) - 1, "No Data Available", data_format)
            row += 1

        row += 1

    write_section("Hostel Students", hostel_users,
                  ["S.No", "Student ID", "Full Name", "Phone No", "Email", "Hostel Name", "Room No"], 
                  ["student_id", "fullname", "phone_no", "email", "hostel", "room_no"])

    write_section("Non-Hostel Students", nonhostel_users,
                  ["S.No", "Student ID", "Full Name", "Phone No", "Email", "Balance"], 
                  ["student_id", "fullname", "phone_no", "email", "balance"])

    write_section("Faculty Members", faculty_users,
                  ["S.No", "Faculty ID", "Full Name", "Phone No", "Email", "Balance"], 
                  ["faculty_id", "fullname", "phone_no", "email", "balance"])

    worksheet.set_column("A:A", 5)
    worksheet.set_column("B:B", 15)
    worksheet.set_column("C:C", 25)
    worksheet.set_column("D:D", 15)
    worksheet.set_column("E:E", 25)
    worksheet.set_column("F:F", 15)

    writer._save()
    output.seek(0)
    
    return output

@app.route('/download/excel')
def download_excel():
    excel_data = create_user_report()
    return send_file(excel_data, download_name="Users_Report.xlsx", as_attachment=True)

@app.route('/download/pdf')
def download_pdf():
    connection = get_db_connection()
    with connection.cursor() as cursor:
        cursor.execute("SELECT student_id, fullname, phone_no, email, hostel, room_no FROM hostel_student")
        hostel_users = cursor.fetchall()

        cursor.execute("SELECT student_id, fullname, phone_no, email, balance FROM non_hostel_student")
        nonhostel_users = cursor.fetchall()

        cursor.execute("SELECT faculty_id, fullname, phone_no, email, balance FROM faculty")
        faculty_users = cursor.fetchall()

    output = BytesIO()
    pdf = SimpleDocTemplate(output, pagesize=letter)
    elements = []
    styles = getSampleStyleSheet()

    def add_section(title, data):
        """Helper function to add a section with a simple bordered table"""
        elements.append(Spacer(1, 10))
        elements.append(Paragraph(f"<b>{title}</b>", styles["Title"]))
        elements.append(Spacer(1, 10))

        if not data:
            elements.append(Paragraph("<i>No records found.</i>", styles["Normal"]))
            return
        
        table_data = [list(data[0].keys())]  # Add table headers
        for row in data:
            table_data.append(list(row.values()))  # Add row data
        
        table = Table(table_data)
        table.setStyle(TableStyle([
            ('BOX', (0, 0), (-1, -1), 1, colors.black),  # Outer Border Only
            ('LINEABOVE', (0, 1), (-1, 1), 1, colors.black),  # Header Separator
            ('ALIGN', (0, 0), (-1, -1), 'LEFT'),
            ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
            ('BOTTOMPADDING', (0, 0), (-1, 0), 8),
            ('TOPPADDING', (0, 1), (-1, -1), 6),
        ]))
        
        elements.append(table)

    # Add sections for different user types
    add_section("Hostel Students", hostel_users)
    add_section("Non-Hostel Students", nonhostel_users)
    add_section("Faculty Members", faculty_users)

    pdf.build(elements)
    output.seek(0)

    return send_file(output, download_name="Users_Record.pdf", as_attachment=True)


@app.route('/process_payment', methods=['POST'])
def process_payment():
    data = request.get_json()
    student_id = data.get('student_id')
    amount = data.get('amount')

    if not student_id or not amount:
        return jsonify({"message": "Invalid Data"}), 400

    try:
        column = None
        fee_type = None
        actual_amount = 0
        current_month = datetime.now().month
        year = datetime.now().year

        # Decide column and amount
        if amount == 1:
            if 7 <= current_month <= 12:
                column = "first"
                fee_type = "first"
            elif 1 <= current_month <= 6:
                column = "second"
                fee_type = "second"
            actual_amount = 9600
        elif amount == 2:
            column = "full"
            fee_type = "full"
            actual_amount = 19200

        if column:
            conn = get_db_connection()
            cursor = conn.cursor()

            # Update hostel_student term column
            cursor.execute(f"UPDATE hostel_student SET {column} = %s WHERE student_id = %s", (1, student_id))
            conn.commit()

            # Count total payments so far to generate a unique receipt number
            cursor.execute("SELECT COUNT(*) AS count FROM payments")
            count = cursor.fetchone()['count'] + 1
            receipt_number = f"PDR/{year}/{count:05d}"

            # Insert payment record
            cursor.execute("""
                INSERT INTO payments (student_id, amount, fee_type, year, receipt_no)
                VALUES (%s, %s, %s, %s, %s)
            """, (student_id, actual_amount, fee_type, year, receipt_number))
            conn.commit()

            cursor.close()
            conn.close()

            # Redirect to receipt
            return jsonify({
                "message": "Payment recorded!",
                "redirect_url": url_for('receipt', student_id=student_id, fee_type=fee_type, year=year, receipt_number=receipt_number)
            })
        else:
            return jsonify({"message": "Invalid payment amount"}), 400

    except pymysql.MySQLError as e:
        return jsonify({"message": f"Database Error: {str(e)}"}), 500
    

@app.route('/receipt')
def receipt():
    student_id = request.args.get('student_id')
    fee_type = request.args.get('fee_type')
    year = request.args.get('year')
    receipt_number = request.args.get('receipt_number')

    # Fetch student info from database
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM hostel_student WHERE student_id = %s", (student_id,))
    student = cursor.fetchone()
    cursor.close()
    conn.close()

    if not student:
        return "Student not found", 404

    return render_template(
        'receipt.html',
        student=student,
        student_id=student_id,
        fee_type=fee_type,
        year=year,
        receipt_number=receipt_number
    )


def generate_payment_qr(amount):
    upi_id = "parimetaliya932@oksbi"
    payee_name = "Gajera Prince"
    currency = "INR"
    payment_data = f"upi://pay?pa={upi_id}&pn={payee_name}&am={amount}&cu={currency}"

    # Create a QR Code instance
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )
    
    qr.add_data(payment_data)
    qr.make(fit=True)
    
    # Generate the QR code image
    qr_img = qr.make_image(fill="black", back_color="white")

    # Convert image to a stream and return it
    img_io = io.BytesIO()
    qr_img.save(img_io, format="PNG")
    img_io.seek(0)
    
    return img_io


@app.route('/generate_payment_qr')
def generate_qr():
    amount = request.args.get('amount')
    if amount:
        img_io = generate_payment_qr(amount)
        return send_file(img_io, mimetype='image/png')
    return jsonify({'error': 'Invalid amount'}), 400

@app.route('/payment_success', methods=['POST'])
def payment_success():
    """Handles payment success and updates the faculty balance."""

    try:
        data = request.get_json()  # Ensure JSON is received
        if not data:
            return jsonify({"error": "No JSON data received"}), 400

        faculty_id = data.get("faculty_id")
        amount = data.get("amount")

        # Validate faculty_id and amount
        if not faculty_id or amount is None or amount <= 0:
            return jsonify({"error": "Invalid data"}), 400

        conn = get_db_connection()
        if conn is None:
            return jsonify({"error": "Failed to connect to the database"}), 500

        with conn.cursor() as cursor:
            # Check if faculty_id exists
            cursor.execute("SELECT balance FROM faculty WHERE faculty_id = %s", (faculty_id,))
            result = cursor.fetchone()

            if result:
                current_balance = result["balance"] or 0  # Ensure balance is not None
                new_balance = current_balance + amount
                
                cursor.execute("UPDATE faculty SET balance = %s WHERE faculty_id = %s", (new_balance, faculty_id))
                conn.commit()
                return jsonify({"message": "Payment recorded successfully!", "new_balance": new_balance})
            else:
                return jsonify({"error": "Faculty ID not found"}), 404

    except Exception as e:
        print(f"Error: {e}")
        return jsonify({"error": "Server error"}), 500

    finally:
        if conn:
            conn.close()


@app.route('/nonhostel_payment_success', methods=['POST'])
def nonhostel_payment_success():
    """Handles payment success and updates the faculty balance."""

    try:
        data = request.get_json()  # Ensure JSON is received
        if not data:
            return jsonify({"error": "No JSON data received"}), 400

        student_id = data.get("student_id")
        amount = data.get("amount")

        # Validate faculty_id and amount
        if not student_id or amount is None or amount <= 0:
            return jsonify({"error": "Invalid data"}), 400

        conn = get_db_connection()
        if conn is None:
            return jsonify({"error": "Failed to connect to the database"}), 500

        with conn.cursor() as cursor:
            # Check if faculty_id exists
            cursor.execute("SELECT balance FROM non_hostel_student WHERE student_id = %s", (student_id,))
            result = cursor.fetchone()

            if result:
                current_balance = result["balance"] or 0  # Ensure balance is not None
                new_balance = current_balance + amount

                cursor.execute("UPDATE non_hostel_student SET balance = %s WHERE student_id = %s", (new_balance, student_id))
                conn.commit()
                return jsonify({"message": "Payment recorded successfully!", "new_balance": new_balance})
            else:
                return jsonify({"error": "student ID not found"}), 404

    except Exception as e:
        print(f"Error: {e}")
        return jsonify({"error": "Server error"}), 500

    finally:
        if conn:
            conn.close()

def get_user_type(user_id):
    conn = get_db_connection()
    try:
        with conn.cursor() as cursor:
            cursor.execute("SELECT 1 FROM hostel_student WHERE student_id = %s", (user_id,))
            if cursor.fetchone():
                return "hostel_student"
            cursor.execute("SELECT 1 FROM non_hostel_student WHERE student_id = %s", (user_id,))
            if cursor.fetchone():
                return "non_hostel_student"
            cursor.execute("SELECT 1 FROM faculty WHERE faculty_id = %s", (user_id,))
            if cursor.fetchone():
                return "faculty"
    finally:
        conn.close()
    return None

def get_meal_type():
    hour = datetime.now().hour
    if 6 <= hour < 9:
        return "breakfast"
    elif 11 <= hour < 14:
        return "lunch"
    elif 19 <= hour < 21:
        return "dinner"
    return None

def get_dynamic_table_name(user_type):
    today = datetime.now().strftime("%d_%m_%Y")
    meal = get_meal_type()
    if meal:
        return f"{today}_{user_type}_{meal}"
    return None

def create_dynamic_table(table_name):
    conn = get_db_connection()
    try:
        with conn.cursor() as cursor:
            cursor.execute(f"""
                CREATE TABLE IF NOT EXISTS `{table_name}` (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    student_id VARCHAR(50) NOT NULL UNIQUE,
                    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
                )
            """)
        conn.commit()
    finally:
        conn.close()

def is_already_inserted(table_name, student_id):
    conn = get_db_connection()
    try:
        with conn.cursor() as cursor:
            cursor.execute(f"SELECT 1 FROM `{table_name}` WHERE student_id = %s", (student_id,))
            return cursor.fetchone() is not None
    finally:
        conn.close()

def insert_into_dynamic_table(table_name, student_id, user_type):
    conn = get_db_connection()
    try:
        with conn.cursor() as cursor:
            if user_type == "hostel_student":
                # Check fee status for hostel students
                cursor.execute(
                    "SELECT `first`, `second`, `full` FROM hostel_student WHERE student_id = %s",
                    (student_id,)
                )
                result = cursor.fetchone()

                if result is None:
                    flash(f"❌ ID {student_id} not found in hostel_student!", "danger")
                    return

                first, second, full = result["first"], result["second"], result["full"]
                current_month = datetime.now().month

                if 1 <= current_month <= 6:
                    # Jan–Jun: first or full must be paid
                    if not (first == 1 or full == 1):
                        flash(f"⚠️ Hostel fee for first semester not paid for {student_id}!", "danger")
                        return
                else:
                    # Jul–Dec: second or full must be paid
                    if not (second == 1 or full == 1):
                        flash(f"⚠️ Hostel fee for second semester not paid for {student_id}!", "danger")
                        return

                # All checks passed — insert
                cursor.execute(f"INSERT INTO `{table_name}` (student_id) VALUES (%s)", (student_id,))
                flash(f"✅ {student_id} added to {table_name}", "success")

            elif user_type in ["non_hostel_student", "faculty"]:
                balance_table = user_type
                id_col = "student_id" if user_type == "non_hostel_student" else "faculty_id"

                # Check current balance
                cursor.execute(f"SELECT balance FROM {balance_table} WHERE {id_col} = %s", (student_id,))
                result = cursor.fetchone()

                if result is None:
                    flash(f"❌ ID {student_id} not found in {balance_table}!", "danger")
                    return

                current_balance = result["balance"]

                if current_balance is None or current_balance < 80:
                    flash(f"⚠️ Insufficient balance for {student_id}! Current balance: ₹{current_balance}.", "danger")
                    return

                # Insert student into meal table
                cursor.execute(f"INSERT INTO `{table_name}` (student_id) VALUES (%s)", (student_id,))

                # Deduct ₹80 from balance
                cursor.execute(
                    f"UPDATE {balance_table} SET balance = balance - 80 WHERE {id_col} = %s",
                    (student_id,)
                )

                remaining_balance = current_balance - 80

                flash(
                    f"✅ {student_id} added to {table_name}. ₹80 has been deducted. Remaining balance: ₹{remaining_balance}.",
                    "success"
                )
            else:
                # Should not reach here; fallback
                flash(f"❌ Unknown user type for {student_id}!", "danger")

        conn.commit()

    finally:
        conn.close()




def get_all_today_tables():
    conn = get_db_connection()
    today = datetime.now().strftime("%d_%m_%Y")
    meal = get_meal_type()
    data = {}
    try:
        with conn.cursor() as cursor:
            for user_type in ["hostel_student", "non_hostel_student", "faculty"]:
                table_name = f"{today}_{user_type}_{meal}"
                cursor.execute("SHOW TABLES LIKE %s", (table_name,))
                if cursor.fetchone():
                    cursor.execute(f"SELECT * FROM `{table_name}`")
                    data[table_name] = cursor.fetchall()
    finally:
        conn.close()
    return data

@app.route('/scan_barcode', methods=['GET', 'POST'])
def scan_barcode():
    if request.method == 'POST':
        student_id = request.form.get("student_id").strip()
        user_type = get_user_type(student_id)
        print(user_type)

        if not user_type:
            flash(f"ID {student_id} not found in any master table!", "danger")
            return redirect(url_for('scan_barcode'))

        meal_type = get_meal_type()
        if not meal_type:
            flash("⏱️ Not within meal hours!", "warning")
            return redirect(url_for('scan_barcode'))

        table_name = get_dynamic_table_name(user_type)
        create_dynamic_table(table_name)

        if is_already_inserted(table_name, student_id):
            flash(f"{student_id} already registered in {table_name}.", "warning")
        else:
            insert_into_dynamic_table(table_name, student_id, user_type)

        return redirect(url_for('scan_barcode'))

    table_data = get_all_today_tables()
    return render_template("scan.html", table_data=table_data)





@app.route('/generate_barcode')
def generate_barcode():
    return render_template('generate_barcode.html')


@app.route('/daily_report', methods=['GET', 'POST'])
def daily_report():
    data = {
        "hostel_student": {"breakfast": [], "lunch": [], "dinner": []},
        "non_hostel_student": {"breakfast": [], "lunch": [], "dinner": []},
        "faculty": {"breakfast": [], "lunch": [], "dinner": []}
    }

    date_input = None
    category_totals = {
        "hostel_student": 0,
        "non_hostel_student": 0,
        "faculty": 0
    }

    if request.method == 'POST':
        date_input = request.form['date']
        table_date = "_".join(reversed(date_input.split("-")))  # Convert YYYY-MM-DD to DD_MM_YYYY

        categories = ["hostel_student", "non_hostel_student", "faculty"]
        meals = ["breakfast", "lunch", "dinner"]

        conn = get_db_connection()
        cursor = conn.cursor()

        for category in categories:
            for meal in meals:
                table_name = f"{table_date}_{category}_{meal}"
                try:
                    cursor.execute(f"SHOW TABLES LIKE '{table_name}'")
                    if cursor.fetchone():
                        cursor.execute(f"SELECT * FROM {table_name}")
                        result = cursor.fetchall()
                        data[category][meal] = result if result else []
                        category_totals[category] += len(result)
                except pymysql.MySQLError as e:
                    print(f"Error accessing table {table_name}: {e}")

        conn.close()

    return render_template('daily_report.html', data=data, date_input=date_input, category_totals=category_totals)

@app.route('/download/<file_type>/<date_input>')
def download_report(file_type, date_input):
    table_date = "_".join(reversed(date_input.split("-")))
    categories = ["hostel_student", "non_hostel_student", "faculty"]
    meals = ["breakfast", "lunch", "dinner"]

    conn = get_db_connection()
    cursor = conn.cursor()

    all_data = []
    
    for category in categories:
        for meal in meals:
            table_name = f"{table_date}_{category}_{meal}"
            try:
                cursor.execute(f"SHOW TABLES LIKE '{table_name}'")
                if cursor.fetchone():
                    cursor.execute(f"SELECT * FROM {table_name}")
                    rows = cursor.fetchall()
                    if rows:
                        for row in rows:
                            row["category"] = category.replace("_", " ").title()
                            row["meal"] = meal.title()
                            all_data.append(row)
            except pymysql.MySQLError as e:
                print(f"Error fetching {table_name}: {e}")

    conn.close()

    if not all_data:
        return "No data available for this date", 404

    if file_type == "excel":
        return generate_excel(all_data, date_input)

    elif file_type == "pdf":
        return generate_pdf(all_data, date_input)

def generate_excel(data_list, date):
    if not data_list:
        return "No data available", 404

    filename = f"Daily_Report_{date}.xlsx"
    writer = pd.ExcelWriter(filename, engine="xlsxwriter")
    workbook = writer.book
    worksheet = workbook.add_worksheet("Report")

    title_format = workbook.add_format({'bold': True, 'font_size': 18, 'align': 'center', 'bg_color': '#4F81BD', 'font_color': 'white'})
    section_format = workbook.add_format({'bold': True, 'font_size': 12, 'bg_color': '#002060', 'font_color': 'white', 'align': 'center'})
    meal_format = workbook.add_format({'bold': True, 'bg_color': '#FFD700', 'align': 'center', 'border': 1})
    header_format = workbook.add_format({'bold': True, 'bg_color': '#A9A9A9', 'align': 'center', 'border': 1})
    data_format = workbook.add_format({'align': 'center', 'border': 1})
    alternate_row_format = workbook.add_format({'align': 'center', 'border': 1, 'bg_color': '#F2F2F2'})

    worksheet.merge_range("A1:C1", f"Daily Report - {date}", title_format)
    row = 2

    for category in ["Hostel Student", "Non Hostel Student", "Faculty"]:
        worksheet.merge_range(row, 0, row, 2, category, section_format)
        row += 1

        for meal in ["Breakfast", "Lunch", "Dinner"]:
            meal_data = [entry for entry in data_list if entry["category"] == category and entry["meal"] == meal]
            
            worksheet.merge_range(row, 0, row, 2, meal, meal_format)
            row += 1

            worksheet.write(row, 0, "S.No", header_format)

            # Change label for Faculty category
            id_label = "Faculty ID" if category == "Faculty" else "Student ID"
            worksheet.write(row, 1, id_label, header_format)
            row += 1

            if meal_data:
                for idx, entry in enumerate(meal_data, start=1):
                    format_to_use = alternate_row_format if idx % 2 == 0 else data_format
                    worksheet.write(row, 0, idx, format_to_use)
                    worksheet.write(row, 1, entry["student_id"], format_to_use)  # Assuming 'student_id' stores faculty ID as well
                    row += 1
            else:
                worksheet.merge_range(row, 0, row, 1, "No Data Available", data_format)
                row += 1

            row += 1

        row += 1

    worksheet.set_column("A:A", 10)
    worksheet.set_column("B:B", 20)

    writer._save()  # Use _save instead of close
    return send_file(filename, as_attachment=True)


def generate_pdf(data_list, date):
    # Convert list to dictionary
    data_dict = {}
    for entry in data_list:
        key = f"{entry['category'].lower().replace(' ', '_')}_{entry['meal'].lower()}"
        if key not in data_dict:
            data_dict[key] = []
        data_dict[key].append(entry)

    pdf = FPDF(orientation="P", unit="mm", format="A4")
    pdf.set_auto_page_break(auto=True, margin=15)
    pdf.add_page()
    
    pdf.set_font("Arial", "B", 16)
    pdf.cell(200, 10, f"Daily Report - {date}", ln=True, align="C")
    pdf.ln(10)

    categories = ["Hostel Student", "Non_Hostel Student", "Faculty"]
    meals = ["Breakfast", "Lunch", "Dinner"]

    pdf.set_font("Arial", "B", 12)

    for category in categories:
        category_key = category.lower().replace(" ", "_")
        pdf.set_fill_color(0, 102, 204)  # Blue background
        pdf.set_text_color(255, 255, 255)  # White text
        pdf.cell(190, 10, category, 1, 1, "C", fill=True)
        pdf.ln(2)

        for meal in meals:
            table_key = f"{category_key}_{meal.lower()}"
            table_data = data_dict.get(table_key, [])

            pdf.set_fill_color(200, 200, 200)  # Light gray
            pdf.set_text_color(0, 0, 0)  # Black text
            pdf.cell(190, 8, meal, 1, 1, "C", fill=True)

            pdf.set_font("Arial", "B", 10)
            pdf.cell(50, 8, "S.No", 1, 0, "C", fill=True)

            # Label column dynamically
            if "faculty" in category_key:
                pdf.cell(140, 8, "Faculty ID", 1, 1, "C", fill=True)
            else:
                pdf.cell(140, 8, "Student ID", 1, 1, "C", fill=True)

            pdf.set_font("Arial", "", 10)
            
            if table_data:
                for i, entry in enumerate(table_data, 1):
                    pdf.cell(50, 8, str(i), 1, 0, "C")
                    if "faculty" in category_key:
                        pdf.cell(140, 8, str(entry.get("student_id", "N/A")), 1, 1, "C")
                    else:
                        pdf.cell(140, 8, str(entry.get("student_id", "N/A")), 1, 1, "C")
            else:
                pdf.cell(190, 8, "No Data Available", 1, 1, "C")

            pdf.ln(5)

    filename = f"Daily_Report_{date}.pdf"
    pdf.output(filename, "F")
    return send_file(filename, as_attachment=True)



@app.route("/g_v_list", methods=["GET", "POST"])
def g_v_list():
    if request.method == "POST":
        # POST processing
        meal_type = request.form.get("meal_type")
        persons = request.form.get("person")
        menu_items = request.form.getlist("menu_item[]")
        groceries = request.form.getlist("grocery[]")
        vegetables = request.form.getlist("vegetable[]")
        khanabchas = request.form.getlist("khanabcha[]")
        khanaghatas = request.form.getlist("khanaghata[]")
        remarks = request.form.getlist("remark[]")

        def format_readable_list(data_list):
            return "\n".join([f"{i+1}. {item.strip()}" for i, item in enumerate(data_list) if item.strip()])

        try:
            conn = get_db_connection()
            if not conn:
                flash("Database connection failed!", "danger")
                return redirect("/g_v_list")
                
            cursor = conn.cursor()

            # Insert each menu item as a separate row
            inserted_count = 0
            for i in range(len(menu_items)):
                menu_item = menu_items[i].strip() if i < len(menu_items) else ""
                if menu_item:  # Only insert if menu item is not empty
                    try:
                        cursor.execute("""
                            INSERT INTO grocery_vegetable_management
                            (date_day, meal_type, menu_item, person, grocery, vegetable, khanabcha, khanaghata, remark)
                            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
                        """, (
                            datetime.now(),
                            meal_type,
                            menu_item,
                            persons,
                            groceries[i].strip() if i < len(groceries) else "",
                            vegetables[i].strip() if i < len(vegetables) else "",
                            khanabchas[i].strip() if i < len(khanabchas) else "",
                            khanaghatas[i].strip() if i < len(khanaghatas) else "",
                            remarks[i].strip() if i < len(remarks) else ""
                        ))
                        inserted_count += 1
                    except Exception as e:
                        print(f"Error inserting row {i}: {e}")

            if inserted_count > 0:
                conn.commit()
                flash(f"Successfully saved {inserted_count} item(s)!", "success")
            else:
                flash("No data to save. Please fill in the form.", "warning")
            
            cursor.close()
            conn.close()
        except pymysql.MySQLError as e:
            flash(f"Database error: {str(e)}", "danger")
            print(f"Database error while inserting: {str(e)}")
        except Exception as e:
            flash(f"Unexpected error: {str(e)}", "danger")
            print(f"Unexpected error: {str(e)}")

        return redirect("/g_v_list?meal_type=" + (meal_type or ""))
    
    # GET processing
    meal_type = request.args.get("meal_type")
    menu_items = []
    if meal_type in ["breakfast", "lunch", "dinner"]:
        try:
            conn = get_db_connection()
            cursor = conn.cursor()
            today = datetime.now().date()
            weekday = today.strftime('%A')  # e.g., 'Monday'

            query = f"""
                SELECT `{weekday}` AS day_value
                FROM `{meal_type}`
                WHERE `{weekday}` IS NOT NULL AND `{weekday}` != ''
                AND from_date <= %s AND to_date >= %s
            """

            cursor.execute(query, (today, today))
            results = cursor.fetchall()

            for row in results:
                if row['day_value']:
                    items = row['day_value'].split('\n')
                    menu_items.extend([item.strip() for item in items if item.strip()])

            cursor.close()
            conn.close()

        except pymysql.MySQLError as e:
            flash(f"Database error while fetching: {str(e)}", "danger")
            return render_template("g_v_list.html", meal_type=meal_type, menu_items=[])

    return render_template("g_v_list.html", meal_type=meal_type, menu_items=menu_items)

@app.route("/g_v_report")
def g_v_report():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM grocery_vegetable_management ORDER BY date_day DESC, id DESC")
    rows = cursor.fetchall()
    conn.close()

    grouped_data = defaultdict(list)

    for row in rows:
        date = row['date_day']
        meal_type = row['meal_type']
        key = (date, meal_type)
        grouped_data[key].append({
            'id': row['id'],  # Add id for deletion
            'menu_item': row['menu_item'],
            'person': row['person'],
            'grocery': row['grocery'],
            'vegetable': row['vegetable'],
            'khanabcha': row['khanabcha'],
            'khanaghata': row['khanaghata'],
            'remark': row['remark'],
            'day': date.strftime("%A"),
            'date_str': date.strftime("%d-%m-%Y")
        })

    # Sort by date descending
    sorted_grouped_data = OrderedDict(sorted(grouped_data.items(), key=lambda x: x[0][0], reverse=True))

    return render_template("g_v_report.html", grouped_data=sorted_grouped_data)


@app.route("/delete_gv_row", methods=["POST"])
def delete_gv_row():
    row_id = request.form.get("id")
    
    if not row_id:
        flash("Error: No ID provided for deletion", "danger")
        return redirect(url_for("g_v_report"))

    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        query = "DELETE FROM grocery_vegetable_management WHERE id = %s"
        cursor.execute(query, (row_id,))
        conn.commit()
        cursor.close()
        conn.close()
        flash("Row deleted successfully!", "success")
    except Exception as e:
        flash(f"Error deleting row: {str(e)}", "danger")
        print(f"Deletion error: {e}")
    
    return redirect(url_for("g_v_report"))


@app.route('/g_v')
def g_v():
    return render_template('g_v.html')


@app.route('/admin_login')
def admin_login():
    return render_template('try.html')

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/explore')
def explore():
    return render_template('explore.html')

# Forgot Password route
@app.route("/hostel_student_forgot_password", methods=['GET', 'POST'])
def hostel_student_forgot_password():
    if request.method == 'POST':
        student_id = request.form.get('student_id')
        old_password = request.form.get('old_password')
        new_password = request.form.get('new_password')
        confirm_password = request.form.get('confirm_password')

        # Client-side validation
        if not all([student_id, old_password, new_password, confirm_password]):
            return render_template("hostel_student_forgot_password.html", alert="All fields are required.")

        if new_password != confirm_password:
            return render_template("hostel_student_forgot_password.html", alert="New passwords do not match.")

        try:
            conn = get_db_connection()
            with conn.cursor() as cursor:
                cursor.execute("SELECT * FROM hostel_student WHERE student_id = %s AND password = %s", (student_id, old_password))
                student = cursor.fetchone()

                if not student:
                    return render_template("hostel_student_forgot_password.html", alert="Incorrect Student ID or Old Password.")

                cursor.execute("UPDATE hostel_student SET password = %s WHERE student_id = %s", (new_password, student_id))
                conn.commit()
                return render_template("hostel_student_forgot_password.html", success_redirect=True)
        except Exception as e:
            return render_template("hostel_student_forgot_password.html", alert=f"Database error: {str(e)}")
        finally:
            conn.close()

    return render_template("hostel_student_forgot_password.html")

# Login route (make sure the name is correct here)
@app.route("/hostel_student_login", methods=['GET', 'POST'])
def hostel_student_login():
    return render_template("hosteller_student_login.html")


@app.route("/fees_pay_admin", methods=['GET', 'POST'])
def fees_pay_admin():
    if request.method == 'POST':
        user_type = request.form['user_type']
        user_id = request.form['user_id']

        # Validate user_type and user_id
        if not user_type or not user_id:
            flash("User type and ID are required.", "danger")
            return redirect('/fees_pay_admin')

        amount = 0
        fee_type = None
        column = None
        actual_amount = 0
        current_month = datetime.now().month
        year = datetime.now().year

        try:
            conn = get_db_connection()
            cursor = conn.cursor()

            # Logic for Hostel Student
            if user_type == 'Hostel Student':
                term_type = request.form.get('term_type')
                if not term_type:
                    flash("Term type is required for hostel students.", "danger")
                    return redirect('/fees_pay_admin')

                if term_type == "First Term":
                    column = "first"
                    fee_type = "First Term"
                    actual_amount = 9600
                elif term_type == "Second Term":
                    column = "second"
                    fee_type = "Second Term"
                    actual_amount = 9600
                elif term_type == "Full Year":
                    column = "full"
                    fee_type = "Full Year"
                    actual_amount = 19200
                else:
                    flash("Invalid term type.", "danger")
                    return redirect('/fees_pay_admin')

                # Update hostel_student table
                cursor.execute(f"UPDATE hostel_student SET {column} = %s WHERE student_id = %s", (1, user_id))
                conn.commit()

                # Generate receipt number
                cursor.execute("SELECT COUNT(*) AS count FROM payments")
                count = cursor.fetchone()['count'] + 1
                receipt_number = f"PDR/{year}/{count:05d}"

                # Insert into payments table
                cursor.execute("""
                    INSERT INTO payments (student_id, amount, fee_type, year, receipt_no)
                    VALUES (%s, %s, %s, %s, %s)
                """, (user_id, actual_amount, fee_type, year, receipt_number))
                conn.commit()

                return redirect(url_for('receipt_admin', student_id=user_id, fee_type=fee_type, year=year, receipt_number=receipt_number))

            # Logic for Non Hostel Student / Faculty
            elif user_type == 'Non Hostel Student' or user_type == 'Faculty':
                amount_raw = request.form.get('amount')
                if not amount_raw or not amount_raw.isdigit():
                    flash("Amount is required and must be a valid number.", "danger")
                    return redirect('/fees_pay_admin')

                amount = int(amount_raw)

                if user_type == 'Non Hostel Student':
                    cursor.execute("UPDATE non_hostel_student SET balance = balance + %s WHERE student_id = %s", (amount, user_id))
                    flash("Non-hostel student balance updated.", "success")

                elif user_type == 'Faculty':
                    cursor.execute("UPDATE faculty SET balance = balance + %s WHERE faculty_id = %s", (amount, user_id))
                    flash("Faculty balance updated.", "success")

                conn.commit()

            else:
                flash("Invalid user type selected.", "danger")

            cursor.close()
            conn.close()

        except Exception as e:
            flash(f"Database error: {str(e)}", "danger")

        return redirect('/fees_pay_admin')

    return render_template("pay_fees.html")


@app.route('/receipt_admin')
def receipt_admin():
    student_id = request.args.get('student_id')
    fee_type = request.args.get('fee_type')
    year = request.args.get('year')
    receipt_number = request.args.get('receipt_number')

    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM hostel_student WHERE student_id = %s", (student_id,))
    student = cursor.fetchone()
    cursor.close()
    conn.close()

    if not student:
        return "Student not found", 404

    return render_template("receipt_generated.html",
        student=student,
        student_id=student_id,
        fee_type=fee_type,
        year=year,
        receipt_number=receipt_number
    )




if __name__ == '__main__':
    app.run(debug=True)
