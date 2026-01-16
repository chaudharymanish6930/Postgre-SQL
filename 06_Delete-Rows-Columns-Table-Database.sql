CREATE TABLE employee2(
		employee_id int Primary key,
		name VARCHAR(50) NOT NULL,
		position VARCHAR(50),
		department VARCHAR(40),
		hire_date DATE,
		salary NUMERIC(10,2)
);

SELECT * FROM employee2;

INSERT INTO employee2(employee_id,name, position, department, hire_date, salary)
		VALUES(100,'manish','data science', 'aiml', '2023-05-10', 65000.00),
		(101,'suraj','artificial intelligence', 'ds', '2023-05-10', 65000.00),
		(102,'rohit','machine learing', 'ai', '2023-05-10', 65000.00),
		(103,'rohit','network learing', 'ml', '2023-05-10', 65000.00),
		(104,'tanish','deep learing', 'core', '2023-05-10', 65000.00);

-- Delete rows from the table
DELETE FROM employee2
WHERE employee_id=103;

DELETE FROM employee2
WHERE department='aiml'

-- delete columns from the table
ALTER TABLE employee2
DROP COLUMN salary;

ALTER TABLE employee2
DROP COLUMN department;

-- delete Table 
DROP TABLE IF EXISTS employee3; -- it shows error because it is doesn't exist

-- here delete the table
DROP TABLE IF EXISTS employee2;

-- if u want to delete the database by DROP
DROP DATABASE IF EXISTS company; -- don't run delete DataBase
