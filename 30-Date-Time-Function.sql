DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
	product_name VARCHAR(20),
	category VARCHAR(20),
	price DECIMAL(10,2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5,2)
);

INSERT INTO users(product_name,category,price,quantity,added_date,discount_rate)
VALUES ('Laptop','Electronics',75000.50,10,'2024-01-15',10.00),
	   ('Smartphone','Electronics',45000.99,25,'2024-02-20',5.00),
	   ('Headphones','Accessories',1500.75,50,'2024-03-05',15.00),
	   ('Office Chair','Furniture',5500.00,20,'2023-12-01',20.00),
	   ('Desk','Furniture',8000.00,15,'2023-11-20',12.00),
	   ('Monitor','Electronics',12000.00,8,'2024-01-10',8.00),
	   ('Printer','Electronics',9500.50,5,'2024-02-01',7.50),
	   ('Mouse','Accessories',750.00,35,'2024-03-18',10.00),
	   ('Keyboard','Accessories',1250.00,35,'2024-03-18',10.00),
	   ('Tablet','Electronics',30000.00,12,'2024-02-28',5.00);

SELECT * FROM users;

-- 1. NOW() -get current Date and Time
SELECT NOW() AS current_datetime;

-- 2. CURRENT_DATE() -get Current Date
SELECT CURRENT_DATE AS today_date;

SELECT (CURRENT_DATE-added_date),CURRENT_DATE, added_date AS days_difference
FROM users;

-- 3. EXTRACT( - Extract parts of a date
-- Extact the year, month, and day from the added_date column
SELECT users,
		EXTRACT(YEAR FROM added_date) AS year_added,
		EXTRACT(MONTH FROM added_date) AS monnth_added,
		EXTRACT(DAY FROM added_date) AS day_added
FROM users;

-- 4.  AGE() calculate age between dates
-- Calculate the time difference between added_date and today's date.
SELECT users,
		AGE(CURRENT_DATE,added_date) AS age_since_added
FROM users;

-- 5. TO_CHAR() - format dates as string
-- format added_date in a custom format (DD-MON-YYYY)
SELECT users,
	TO_CHAR(added_date,'DD-MONT-YYYY') AS formated_date
FROM users;

SELECT users,
	TO_CHAR(added_date,'DD-MON-YYYY') AS formated_date
FROM users;

SELECT users,
	TO_CHAR(added_date,'DD-MONTH-YYYY') AS formated_date
FROM users;

SELECT users,
	TO_CHAR(added_date,'MONTH-DD-YYYY') AS formated_date
FROM users;

-- 6. DATE_PART( - get specific Date Part
-- EXTRACT the day of the week from added_Date.
SELECT product_name, added_date,
		DATE_PART('DOW',added_date) AS dayOF_week
FROM users;

SELECT product_name, added_date,
		DATE_PART('month',added_date) AS dayOF_week
FROM users;

-- 7. DATE_TRUNC() - truncate date to precision
-- Truncate added_date to the start of the month.
SELECT product_name,added_date,
		DATE_TRUNC('month', added_date) AS month_satart,
		DATE_PART('month',added_date) AS dayOF_week
FROM users;

-- 8. INTERVAL - Add or Substract Time Intervals
-- add 6 months to the added_date
SELECT product_name, added_date,
		added_date + INTERVAL '6 days' AS new_date
FROM users;

SELECT product_name, added_date,
		added_date + INTERVAL '6 months' AS new_date
FROM users;

SELECT product_name,added_date,
		DATE_TRUNC('Day', added_date) AS month_satart
FROM users;

-- 9. CURRENT_TIME( - Get Current Time
-- Retrieve only the current time

SELECT CURRENT_TIME AS current_times;

-- 10. TO_DATE - convert string to Date
-- convert a string to a date format
SELECT TO_DATE('28-11-2024','DD-MM-YYYY') AS converted_date;
-- sql format date
