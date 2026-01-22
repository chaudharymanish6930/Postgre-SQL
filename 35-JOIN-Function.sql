-- Create Employees Table
DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	department_id INT
);

INSERT INTO employee(first_name,last_name,department_id)
VALUES('Rahul','Sharma',101),
	  ('Priya','Mehta',102),
	  ('Ankit','Verma',103),
	  ('Simran','Kaur',NULL),
	  ('Aman','Singh',101);

SELECT * FROM employee;

-- create department table
DROP TABLE IF EXISTS department;
CREATE TABLE department(
	department_id INT PRIMARY KEY,
	department_name VARCHAR(20)
);

INSERT INTO department(department_id, department_name)
VALUES(101,'Sales'),
	  (102,'Marketing'),
	  (103,'IT'),
	  (104,'HR');

SELECT * FROM department;

-- INNER JOIN
SELECT e.employee_id,e.first_name,e.last_name,
	   d.department_id,d.department_name
FROM employee e
INNER JOIN 
department d
ON e.department_id=d.department_id

-- LEFT JOIN
SELECT e.employee_id,e.first_name,e.last_name,
	   d.department_id,d.department_name
FROM employee e
LEFT JOIN 
department d
ON e.department_id=d.department_id

-- RIGHT JOIN
SELECT e.employee_id,e.first_name,e.last_name,
	   d.department_id,d.department_name
FROM employee e
RIGHT JOIN 
department d
ON e.department_id=d.department_id

-- FULL OUTER JOIN
SELECT e.employee_id,e.first_name,e.last_name,
	   d.department_id,d.department_name
FROM employee e
FULL OUTER JOIN 
department d
ON e.department_id=d.department_id

-- Retrieve all possible combinatios of employee and department
SELECT
	e.first_name,
	e.last_name,
	d.department_name
FROM employee e
CROSS JOIN
department d;

-- find employee who share the same department
-- SELF JOIN
SELECT e1.first_name AS employee_name1,
	   e2.first_name AS employee_name2
FROM employee e1 JOIN employee e2
ON e1.department_id = e2.department_id;


--- same department_id and employee_id                     
SELECT e1.first_name AS employee_name1,
	   e2.first_name AS employee_name2,
	   d.department_name
FROM employee e1 JOIN employee e2
ON e1.department_id = e2.department_id AND e1.employee_id<>e2.employee_id
JOIN
department d
ON
e1.department_id=d.department_id;