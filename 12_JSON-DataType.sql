CREATE TABLE json_type (
    id SERIAL PRIMARY KEY,
    user_data JSONB
);

SELECT * FROM json_type;

INSERT INTO json_type (user_data)
VALUES ('{"name":"Manish","course":"PostgreSQL"}'),
	   ('{"surname":"Choudhary","branch":"AIML","sec":"AIML"}');