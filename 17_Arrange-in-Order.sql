-- Drop the table if it already exists
DROP TABLE IF EXISTS office;

-- Create the office table
CREATE TABLE IF NOT EXISTS office(
		employee_id serial Primary key,
		name VARCHAR(50) NOT NULL,
		email VARCHAR(50) UNIQUE,
		age INT ,
		city VARCHAR(20)	
);

-- print all the data as you insert into the table
SELECT * FROM office;

INSERT INTO office(name, email, age, city)
		VALUES('Manish','memanish@gmail.com', 21,'Banglore'),
			  ('Punit','punit@gmail.com', 23,'Mumbai'),
			  ('Anuuj','Anuj@gmail.com', 25, 'Chennai'),
			  ('Ravi','ravi@gmail.com', 26, 'Dehradun'),
			  ('Shivam', 'shivam@gmail.com', 22, 'Lucknow');

-- Arrange in a order
SELECT * FROM office ORDER BY name ASC;

SELECT * FROM office ORDER BY age DESC; 

SELECT * FROM office ORDER BY employee_id ASC;