-- 1. Create the table
CREATE TABLE persons1 (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

-- 2. Insert 5 records into the table
INSERT INTO persons1 (first_name, last_name, age, email) VALUES
('John', 'Doe', 28, 'john.doe@example.com'),
('Alice', 'Smith', 34, 'alice.smith@example.com'),
('Robert', 'Johnson', 25, 'robert.johnson@example.com'),
('Emily', 'Davis', 30, 'emily.davis@example.com'),
('David', 'Wilson', 40, 'david.wilson@example.com');

SELECT * FROM persons1;

-- one update
UPDATE persons1
SET email='persons1@gmail.com'
WHERE age>=30;

-- more than one update
UPDATE persons1
SET age=65, email='smith@gmail.com'
WHERE first_name='Alice';  

-- by this arrangement is disorder
SELECT * FROM persons1 ORDER BY id ASC;