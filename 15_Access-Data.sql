CREATE TABLE office(
		employee_id serial Primary key,
		name VARCHAR(50) NOT NULL,
		position VARCHAR(50),
		department VARCHAR(40),
		hire_date DATE,
		salary NUMERIC(10,2)	
)

-- print all the data as you insert into the table
SELECT * FROM office;

-- Access only employee_id
SELECT employee_id FROM office;

-- Access employee_id and name 
SELECT employee_id, name FROM office;

-- Access employee_id, name, and hire_date
SELECT employee_id, name, hire_date FROM office;


INSERT INTO office(name, position, department, hire_date, salary)
		VALUES('manish','machine learing', 'aiml', '2023-05-10', 65000.00),
		('suraj','artificial intelligence', 'csel', '2023-05-10', 65000.00),
		('rohit','core', 'cse', '2023-05-10', 65000.00),
		('rohit','data science', 'aiml', '2023-05-10', 65000.00),
		('tanish','iot', 'aiml', '2023-05-10', 65000.00);