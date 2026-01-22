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

-- Assign a unique row number to each product within the same category.

SELECT product_name, category, price,
		ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM users;

SELECT product_name, category, price,
		DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS ranking
FROM users;

SELECT product_name, category, price,
		RANK() OVER(PARTITION BY category ORDER BY price DESC) AS ranking
FROM users; -- amount same

SELECT product_name, category, price,
		SUM(price) OVER(ORDER BY price DESC) AS running_total
FROM users;

SELECT product_name, category, price,
		SUM(price) OVER(ORDER BY price ASC) AS running_total
FROM users;
