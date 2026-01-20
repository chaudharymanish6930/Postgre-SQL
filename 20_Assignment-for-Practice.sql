-- Drop the table if it exists
DROP TABLE IF EXISTS employee;

-- Create Table for the assignment
CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	department VARCHAR(30),
	salary DECIMAL(10,2) CHECK (salary>0),
	joining_date DATE NOT NULL,
	age INT CHECK (age>=18)
);

INSERT INTO employee(first_name, last_name, department, salary, joining_date, age)
VALUES
('Amit','Sharma','IT',60000.00,'2022-05-01',29),
('Neha','Patel','HR',55000.00,'2021-08-15',32),
('Ravi','Kumar','Finance',70000.00,'2020-03-10',35),
('Anjali','Verma','IT',65000.00,'2019-11-22',28),
('Suresh','Reddy','Operations',50000.00,'2023-01-10',26);

-- Assignment
-- Q1. Retrieve all employees 'first_name' and their departmaent
SELECT first_name, department FROM employee;

-- Q2. Update the salary of all employee in the 'IT' department by increasing it by 10%
UPDATE employee
SET salary = salary+(salary*0.1)
WHERE department='IT';

SELECT * FROM employee;

-- Q3. DELETE all employees who are older than 34 year
DELETE FROM employee
WHERE age>34;

-- Q4. Add a new column 'email' to the employee table
ALTER TABLE employee
ADD COLUMN email VARCHAR(50);

-- Q5. Rename the department to dept_name
ALTER TABLE employee
RENAME COLUMN department TO dept_name

-- Q6. Retrieve the name of employees who joined after january 1, 2021
SELECT first_name, last_name, joining_date FROM employee
WHERE joining_date > '2021-01-01';

-- Q7. Change the data type of the "salary" coloum to 'INTEGER'
ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;

-- Q8. List all employees with their age and salary in decreasing order of salary
SELECT first_name, last_name, age, salary FROM employee 
ORDER BY salary DESC;

-- Q9. Insert a new employee with the following  details
   -- ('Raj', 'Singh', 'Marketing', 60000,'2023-09-15',30)

INSERT INTO employee(first_name, last_name, dept_name, salary, joining_date, age)
VALUES('Raj', 'Singh', 'Marketing', 60000,'2023-09-15',30)

SELECT * FROM employee;

-- Q10. Update age of employee +1 to every employee
UPDATE employee
SET age= age+1;
