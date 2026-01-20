after restart instance =

source venv/bin/activate
python3 main.py --host=0.0.0.0 --port=5000

== database access

sudo mysql
pass= StrongPassword123

## SHOW DATABASES;

## USE track_serve;

## SHOW TABLES;

SELECT COUNT(_) FROM admin;
SELECT COUNT(_) FROM payments;
SELECT COUNT(\*) FROM breakfast;

---

DESCRIBE admin;
DESCRIBE payments;

---

SELECT _ FROM admin;
SELECT _ FROM payments LIMIT 10;
SELECT \* FROM breakfast LIMIT 20;

---

SHOW GRANTS FOR 'trackserve'@'localhost';

--

SELECT DATABASE();
