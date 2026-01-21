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


-- Applied Logical operators
SELECT * FROM users;

-- USING AND  in Two conditions
SELECT * FROM users
WHERE age>=40 AND salary>=50000;

SELECT * FROM users
WHERE age>60 AND salary>=50000;

SELECT * FROM users
WHERE age>=40 AND salary>=50000;

-- USING OR  in two condition
SELECT * FROM users
WHERE age>=60 OR salary>=90000;

SELECT * FROM users
WHERE age>=30 OR salary>=100000;

-- USING NOT 
SELECT * FROM users
WHERE (department='IT'); -- SHOWS only it

SELECT * FROM users
WHERE NOT (department='IT');