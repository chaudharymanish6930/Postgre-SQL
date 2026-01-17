CREATE TABLE boolean_type (
    id SERIAL PRIMARY KEY,
    is_active BOOLEAN
);

SELECT * FROM boolean_type;

INSERT INTO boolean_type (is_active)
VALUES (TRUE),
	   (FALSE);
