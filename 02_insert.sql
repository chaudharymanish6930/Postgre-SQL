SELECT * FROM employee;

CREATE TABLE employee(
		employee_id serial Primary key,
		name VARCHAR(50) NOT NULL,
		position VARCHAR(50),
		department VARCHAR(40),
		hire_date DATE,
		salary NUMERIC(10,2)		
)

INSERT INTO employee(name, position, department, hire_date, salary)
		VALUES('manish','machine learing', 'aiml', '2023-05-10', 65000.00),
		('suraj','artificial intelligence', 'csel', '2023-05-10', 65000.00),
		('rohit','core', 'cse', '2023-05-10', 65000.00),
		('rohit','data science', 'aiml', '2023-05-10', 65000.00),
		('tanish','iot', 'aiml', '2023-05-10', 65000.00);
			