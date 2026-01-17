CREATE TABLE string_types (
    id SERIAL PRIMARY KEY,
    grade CHAR(1),
    name VARCHAR(50),
    description TEXT
);

SELECT * FROM string_types;

INSERT INTO string_types (grade,name,description)
VALUES ('A','Manish','This table demonstrates string data types in PostgreSQL'),
	   ('B','Shivam','The Free person in the world without any tension'),
	   ('C','vishal','the legend in the present world');
