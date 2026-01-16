SELECT * FROM employee;

-- delete the data of the table
TRUNCATE TABLE employee;
-- in this case the numbering of the emp_id starts from the previous number... 
-- like 5 last, now start 6,7,8,9...

-- now again insert the data into table
INSERT INTO employee(name, positions, department, hire_date, salary)
	VALUES('manish','machine learing', 'aiml', '2023-05-10', 65000.00),
		  ('suraj','artificial intelligence', 'csel', '2023-05-10', 65000.00),
		  ('rohit','core', 'cse', '2023-05-10', 65000.00),
		  ('rohit','data science', 'aiml', '2023-05-10', 65000.00),
		  ('tanish','iot', 'aiml', '2023-05-10', 65000.00);

-- Resolve it by line command, start numbering 1,2,3,4....
TRUNCATE TABLE employee RESTART IDENTITY;