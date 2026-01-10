-- 1. Create the table
CREATE TABLE persons (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

-- 2. Insert 5 records into the table
INSERT INTO persons (first_name, last_name, age, email) VALUES
('John', 'Doe', 28, 'john.doe@example.com'),
('Alice', 'Smith', 34, 'alice.smith@example.com'),
('Robert', 'Johnson', 25, 'robert.johnson@example.com'),
('Emily', 'Davis', 30, 'emily.davis@example.com'),
('David', 'Wilson', 40, 'david.wilson@example.com');

SELECT * FROM persons;

--update the data 
UPDATE persons
SET age=33
WHERE first_name='Alice';

UPDATE persons
SET email='robert.com'
WHERE first_name='Robert';


SELECT * FROM persons ORDER BY id ASC;

SELECT * FROM persons ORDER BY first_name ASC;

SELECT * FROM persons ORDER BY last_name DESC;
