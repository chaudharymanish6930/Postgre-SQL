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

SELECT * FROM office;

INSERT INTO office(name, email, age, city)
		VALUES('Manish','memanish@gmail.com', 21,'Banglore'),
			  ('Punit','punit@gmail.com', 23,'Mumbai'),
			  ('Anuuj','Anuj@gmail.com', 25, 'Chennai'),
			  ('Ravi','ravi@gmail.com', 26, 'Dehradun'),
			  ('Shivam', 'shivam@gmail.com', 22, 'Lucknow');

-- it is present in the table
UPDATE office
SET age=26
WHERE name='Manish';

UPDATE office
SET city='Tamil Nadu'
WHERE age>25;

UPDATE office
SET city='Tamil Nadu'
WHERE age>=25;

-- two or more updates
UPDATE office
SET city='kolkata', age='30'
WHERE age<=25;

UPDATE office
SET city='kolkata', age='30'
WHERE name='Ravi';

UPDATE office
SET age=age+1
WHERE email LIKE '%@gmail.com'
-- like use at a specific string
-- Here % works as starting and ending point of it 
-- use starting check the end email
-- use ending check the start email


-- Step 3: Update user data (e.g., user_id = 3)
UPDATE office
SET
    name = 'Sara Kapoor',
    age = 29,
    city = 'Hyderabad',
    email = 'sara.kapoor@example.com'
WHERE employee_id = 3;

-- it shows success but data is not present like "manish" 
UPDATE office
SET age=87
WHERE name='manish';
