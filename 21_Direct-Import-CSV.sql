DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
	employee VARCHAR(20),
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),
	department VARCHAR(30),
	salary DECIMAL(10,2),
	joining_date DATE,
	AGE SMALLINT NOT NULL
);

SELECT * FROM users;

-- Direct select from the impport and export option give on the table
-- in this case i also detected the error in the give CSV file
