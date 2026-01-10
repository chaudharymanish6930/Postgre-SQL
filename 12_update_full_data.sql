-- Step 1: Create the users table
CREATE TABLE IF NOT EXISTS users1 (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER,
    city VARCHAR(100),
    email VARCHAR(100)
);

-- Step 2: Insert default data
INSERT INTO users1 (name, age, city, email) VALUES
('Alice Johnson', 25, 'Delhi', 'alice.johnson@example.com'),
('Ravi Kumar', 30, 'Mumbai', 'ravi.kumar@example.com'),
('Sara Khan', 28, 'Bangalore', 'sara.khan@example.com'),
('John Smith', 35, 'Chennai', 'john.smith@example.com'),
('Meena Das', 22, 'Kolkata', 'meena.das@example.com');

SELECT *FROM users1;

-- Step 3: Update user data (e.g., user_id = 3)
UPDATE users1
SET
    name = 'Sara Kapoor',
    age = 29,
    city = 'Hyderabad',
    email = 'sara.kapoor@example.com'
WHERE user_id = 3;