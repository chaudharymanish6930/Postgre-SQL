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

-- here start arithmetic operations on it
SELECT
	first_name,
	last_name,
	salary,
	(salary * 0.1) AS bonus
FROM
	users;

-- calculate new salary
SELECT
	first_name,
	last_name,
	salary,
	(salary * 12) AS anual_salary,
	(salary*0.05) AS increment_Salary,
	(salary+salary*0.05) AS new_salary,
	(salary*1.05) AS new_salary2
FROM
	USERS;