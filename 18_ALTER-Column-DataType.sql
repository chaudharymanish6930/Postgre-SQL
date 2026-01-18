-- Drop the table if it already exists
DROP TABLE IF EXISTS office;

-- Create the office table
CREATE TABLE IF NOT EXISTS office(
		employee_id serial Primary key,
		name VARCHAR(50) NOT NULL,
		email VARCHAR(50),
		age INT ,
		city VARCHAR(20)	
);

SELECT * FROM office;

INSERT INTO office(name, email, age, city)
	VALUES('Manish','memanish@gmail.com', 21,'Banglore'),
		  ('Punit','punit@gmail.com', 23,'Mumbai'),
		  ('Anuuj','Anuj@gmail.com', 25, 'Chennai'),
		  ('Ravi','ravi@gmail.com', 26, 'Dehradun'),
		  ('Shivam', 'shivam@gmail.com', 22, 'Lucknow');

-- rename the name to username
ALTER TABLE office 
RENAME COLUMN name to Username;

-- To change the age datatype from INT to SMALLINT
ALTER TABLE office
ALTER COLUMN age TYPE SMALLINT;

-- to add constraints NOT NULL in city column
ALTER TABLE office
ALTER COLUMN city SET NOT NULL;

-- Adding CHECK constraints to age column
ALTER TABLE office
ADD CONSTRAINT age CHECK(age>=18); -- shows error when already exist 

-- if constraints is present the u drop the constraint
ALTER TABLE office
DROP CONSTRAINT age;

-- shows error because less than 18
INSERT INTO office(username, email, age, city)
	VALUES('Manish','memanish@gmail.com', 17,'Banglore')

-- not error is occured in this statement
INSERT INTO office(username, email, age, city)
	VALUES('Manish','memanish@gmail.com', 17,'Banglore')

-- ALTER the table
ALTER TABLE office
RENAME TO customer

-- shows the data
SELECT * FROM customer;