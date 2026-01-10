-- 1. Create the table
CREATE TABLE persons2 (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

-- 2. Insert 5 records into the table
INSERT INTO persons2 (first_name, last_name, age, email) VALUES
('John', 'Doe', 28, 'john.do@gamil.com'),
('Alice', 'Smith', 34, 'alice.smith@gmail.com'),
('Robert', 'Johnson', 25, 'robert.johnson@example.com'),
('Emily', 'Davis', 30, 'emily.davis@gmail.com'),
('David', 'Wilson', 40, 'david.wilson@example.com');

SELECT * FROM persons2;

-- one update
UPDATE persons2
SET email='persons1@gmail.com'
WHERE age>=30;

-- using like keyword in it.
UPDATE persons2
SET age=age+1
WHERE email LIKE '%@gmail.com';

