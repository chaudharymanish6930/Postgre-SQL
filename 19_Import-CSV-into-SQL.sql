DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
	Name VARCHAR(20),
	AGE SMALLINT NOT NULL,
	Height REAL,
	Weight INT,
	Runs INT NOT NULL,
	country VARCHAR(40),
	club VARCHAR(50),
	DOB DATE
);

SELECT * FROM users;

COPY
users (Name, Age, Height , Weight , Runs, Country, Club,	DOB)
FROM 'D:\postgreSQL\CSV Files\CricketPlayers.csv'
DELIMITER','
CSV HEADER;