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
		VALUES(100,'manish','machine learing', 'aiml', '2023-05-10', 65000.00),
		(101,'suraj','artificial intelligence', 'aiml', '2023-05-10', 65000.00),
		(102,'rohit','machine learing', 'aiml', '2023-05-10', 65000.00),
		(103,'rohit','machine learing', 'aiml', '2023-05-10', 65000.00),
		(104,'tanish','machine learing', 'aiml', '2023-05-10', 65000.00);

-- remove rows
DELETE FROM employee2
WHERE employee_id =102;


-- remove columns
ALTER TABLE employee2
DROP COLUMN salary;


-- table remove or delete
DROP TABLE IF EXISTS employee2;


-- delete the database
DROP DATABASE IF EXISTS company;




		
