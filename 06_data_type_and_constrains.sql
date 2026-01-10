-- DELETEING THE TABLE
DROP TABLE if exists users;

-- CREATING TABLE
CREATE TABLE users(
		user_id INTEGER PRIMARY KEY,
		name VARCHAR(50) NOT NULL,
		email VARCHAR(100) UNIQUE,
		age INTEGER CHECK (age >= 18),
		reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--INSERTING DATA
INSERT INTO users(user_id,name,email,age)
VALUES (1,'Rohit sharma','sharma@gamil.com',26);

INSERT INTO users(user_id,name,email,age)
VALUES (2,'Rohit sharma','sawaharma@gamil.com',19);

INSERT INTO users(user_id,name,email,age)
VALUES (3,'Rohit sharma','saaharma@gamil.com',18);

SELECT * FROM users;