CREATE TABLE IF NOT EXISTS official(
		employee_id serial Primary key,
		name VARCHAR(50) NOT NULL,
		position VARCHAR(50),
		department VARCHAR(40),
		hire_date DATE,
		salary NUMERIC(10,2)	
);

INSERT INTO official(name, position, department, hire_date, salary)
		VALUES('manish','machine learing', 'aiml', '2023-05-10', 65000.00),
		('suraj','artificial intelligence', 'csel', '2023-05-10', 65000.00),
		('mohit','core', 'cse', '2023-05-10', 65000.00),
		('rohit','data science', 'aiml', '2023-05-10', 65000.00),
		('tanish','iot', 'aiml', '2023-05-10', 65000.00);

-- print the table
SELECT * FROM OFFICIAL;

-- update in table
UPDATE official
SET department='IOT'
WHERE name='suraj';

UPDATE official
SET hire_date='2020-05-18'
WHERE name='mohit';

UPDATE official
SET salary='85000.54'
WHERE name='manish';

truncate table official restart identity;


