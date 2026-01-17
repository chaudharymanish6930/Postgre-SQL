CREATE TABLE numeric_types (
    id SERIAL PRIMARY KEY,
    small_number SMALLINT,
    big_number BIGINT,
    price DECIMAL(10,2),
    rating REAL,
    pi_value DOUBLE PRECISION
);

SELECT * FROM numeric_types;

INSERT INTO numeric_types (small_number,big_number,price,rating,pi_value)
VALUES (10,9999999999,19999.99,4.5,3.1415926535),
	   (12,9989292929,19929.546,45.67,2.12578354);