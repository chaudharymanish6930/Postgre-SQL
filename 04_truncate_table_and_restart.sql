select * from employee;

truncate table employee;

INSERT INTO employee(name, positions, department, hire_date, salary)
		VALUES('manish','machine learing', 'aiml', '2023-05-10', 65000.00),
		('suraj','artificial intelligence', 'aiml', '2023-05-10', 65000.00),
		('rohit','machine learing', 'aiml', '2023-05-10', 65000.00),
		('rohit','machine learing', 'aiml', '2023-05-10', 65000.00),
		('tanish','machine learing', 'aiml', '2023-05-10', 65000.00);

truncate table employee restart identity;