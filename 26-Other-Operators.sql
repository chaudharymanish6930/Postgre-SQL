DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
	employee VARCHAR(20),
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),
	department VARCHAR(30),
	salary DECIMAL(10,2),
	joining_date DATE,
	age SMALLINT NOT NULL
);

COPY users (employee, first_name, last_name, email, department,salary, joining_date, age)
FROM 'D:/postgreSQL/CSV-file-for-SQL-Practice/employee_data.csv'
CSV HEADER;

-- IS NULL operator

-- Find employees where the email column 'IS NULL' (if applicable).
SELECT first_name, last_name, email
FROM users
WHERE email IS NULL;

-- LIST employee sorted by salary in DESCENDING order "ORDER BY"
SELECT first_name, last_name, salary
FROM users
ORDER BY salary;  -- by default ascending order

SELECT first_name, last_name, salary
FROM users
ORDER BY salary ASC; -- here also arrange in ascending order

SELECT first_name, last_name, salary
FROM users
ORDER BY salary DESC;  -- descending order

-- Retrieve the top 5 highest-paid employees. 'LIMIT'
SELECT first_name, last_name, salary
FROM users
ORDER BY salary ASC
LIMIT 3;

SELECT first_name, last_name, salary
FROM users
ORDER BY salary DESC
LIMIT 5;

-- Retrieve a list of uniques department BY DISTINCT
SELECT DISTINCT department 
FROM users;

SELECT COUNT (DISTINCT department)
FROM users;

-- make temporary column for the count
SELECT COUNT (DISTINCT department) AS dep_Unique_count
FROM users;
