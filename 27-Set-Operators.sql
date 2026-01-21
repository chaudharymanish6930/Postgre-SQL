-- Table of Student_2023
DROP TABLE IF EXISTS student_2023;
CREATE TABLE student_2023(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(50),
	course VARCHAR(50)
);

INSERT INTO student_2023 (student_id, student_name, course)
VALUES (1,'Aarav Sharma', 'Computer Science'),
	   (2,'Ishita Verma', 'Mechannical Engineering'),
	   (3,'Kabir Patel','Electronics'),
	   (4, 'Ananya Desai','Civil Engineering'),
	   (5, 'Rahul Gupta', 'Computer Science');

SELECT * FROM student_2023;

-- Table of Student_2024
DROP TABLE IF EXISTS student_2024;
CREATE TABLE student_2024(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(50),
	course VARCHAR(50)
);

INSERT INTO student_2024 (student_id, student_name, course)
VALUES (3,'Kabir Patel','Electronics'),
	   (4, 'Ananya Desai','Civil Engineering'),
	   (6,'Meera Rao', 'Computer Science'),
	   (7, 'Vikram Singh', 'Mathematics'),
	   (8, 'Sanya Kapoor', 'Physics');

SELECT * FROM student_2024;

-- UNION - combine results, remove duplicates
SELECT student_name, course 
FROM student_2023
UNION 
SELECT student_name, course
FROM student_2024;

-- UNION ALL - combine results, keeps duplicates
SELECT student_name, course 
FROM student_2023
UNION ALL
SELECT student_name, course
FROM student_2024

-- INTERSECTION -- return common students in both tables
SELECT student_name, course 
FROM student_2023
INTERSECT
SELECT student_name, course
FROM student_2024

-- EXCEPT -- return results in the first table but not in the second
-- unique students in first table
SELECT student_name, course 
FROM student_2023
EXCEPT
SELECT student_name, course
FROM student_2024