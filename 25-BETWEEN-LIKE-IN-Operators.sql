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

-- BETWEEN, LIKE and IN Operator
-- 1. Retrieve employees whose salary is betwwen 40,000 and 60,000 - use BETWEEN operators
SELECT first_name, last_name, salary
FROM users
WHERE salary BETWEEN 40000 AND 60000;

-- 2. find employees whose email addresses end with gamil.com - use LIKE operators
SELECT first_name, last_name, email
FROM users
WHERE email LIKE '%@gmail.com';  -- for check at the end

SELECT first_name, last_name, email
FROM users
WHERE first_name LIKE 'A%'; -- for check at the starts

SELECT first_name, last_name, email
FROM users
WHERE first_name LIKE 'j%';  -- sensitive case in alphabets

SELECT first_name, last_name, email
FROM users
WHERE first_name LIKE '%a%'; -- name should contains 'a' char

SELECT first_name, last_name, email
FROM users
WHERE first_name LIKE '%A%';

-- 3. Retrieve employees who belong to either the "Finanace" or "Marketing" department -- use IN operator
SELECT first_name, last_name, department
FROM users
WHERE department IN ('Finance');

SELECT first_name, last_name, department
FROM users
WHERE department IN ('Finance','IT');

SELECT first_name, last_name, department
FROM users
WHERE department IN ('Finance','IT','Marketing');
