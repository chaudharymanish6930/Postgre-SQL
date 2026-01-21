-- normally import the csbv file for apply the operations
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

SELECT * FROM users;

COPY users (employee, first_name, last_name, email, department,salary, joining_date, age)
FROM 'D:/postgreSQL/CSV-file-for-SQL-Practice/employee_data.csv'
CSV HEADER;

-- Comparision operator in all tables
SELECT * FROM users;

SELECT * FROM users
WHERE age=30;

SELECT * FROM users
WHERE age!=30;

SELECT * FROM users
WHERE age<>30;

SELECT first_name, last_name, age FROM users
WHERE age!=30;

SELECT first_name, last_name, salary FROM users
WHERE salary>=50000;

SELECT first_name, last_name, salary FROM users
WHERE salary<=50000;

SELECT first_name, last_name, age FROM users
WHERE age>=30;