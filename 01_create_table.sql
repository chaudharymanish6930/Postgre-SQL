CREATE TABLE employee(
		employee_id serial Primary key,
		name VARCHAR(50) NOT NULL,
		position VARCHAR(50),
		department VARCHAR(40),
		hire_date DATE,
		salary NUMERIC(10,2)		
)

SELECT * from employee;