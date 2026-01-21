DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
	product_name VARCHAR(20),
	category VARCHAR(20),
	price DECIMAL(10,2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5,2)
);

INSERT INTO users(product_name,category,price,quantity,added_date,discount_rate)
VALUES ('Laptop','Electronics',75000.50,10,'2024-01-15',10.00),
	   ('Smartphone','Electronics',45000.99,25,'2024-02-20',5.00),
	   ('Headphones','Accessories',1500.75,50,'2024-03-05',15.00),
	   ('Office Chair','Furniture',5500.00,20,'2023-12-01',20.00),
	   ('Desk','Furniture',8000.00,15,'2023-11-20',12.00),
	   ('Monitor','Electronics',12000.00,8,'2024-01-10',8.00),
	   ('Printer','Electronics',9500.50,5,'2024-02-01',7.50),
	   ('Mouse','Accessories',750.00,35,'2024-03-18',10.00),
	   ('Keyboard','Accessories',1250.00,35,'2024-03-18',10.00),
	   ('Tablet','Electronics',30000.00,12,'2024-02-28',5.00);

SELECT * FROM users;

-- get all categories in UPPERCASE
SELECT UPPER(category) AS category_Capital
FROM users;

-- get all categories in LOWERCASE
SELECT LOWER(category) AS category_Capital
FROM users;

-- join product_name and category -concatinate
SELECT CONCAT(product_name,'-',category) AS product_details
FROM users;

SELECT CONCAT(product_name,'-',category,'=',quantity) AS product_details
FROM users;

SELECT CONCAT(product_name,'-',category,'=',quantity,'_#_',added_date) AS product_details
FROM users;

-- substring - first 5 character from product_name
SELECT SUBSTRING(product_name, 1,5) AS short_name
FROM users;

SELECT SUBSTRING(product_name, 2,5) AS short_name
FROM users;

SELECT SUBSTRING(product_name, 3,7) AS short_name
FROM users;

-- count length
SELECT product_name, LENGTH(product_name) AS count_of_characters
FROM users;

-- Remove leading and trailing spaces from string "TRIM"
SELECT TRIM('  Monitor  ') AS trim_text;
SELECT LENGTH(TRIM('  Monitor  ')) AS trim_text;
SELECT LENGTH('  Monitor  ') AS trim_text;

-- Replace words "phone" with "device" in product names
SELECT REPLACE(product_name,'phone','device') AS updated
FROM users;

-- get the first 3 characters from categort
SELECT LEFT(category,3) AS category_Capital
FROM users;

SELECT RIGHT(category,3) AS category_Capital
FROM users;