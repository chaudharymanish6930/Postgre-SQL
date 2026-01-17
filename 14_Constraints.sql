CREATE EXTENSION IF NOT EXISTS btree_gist;

/*
	EXCLUSION constraint needs GiST index
	btree_gist allows normal data types (INT, DATE) to work with GiST
	Without this → EXCLUSION will not work
*/

CREATE TABLE departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,              
    name VARCHAR(50) NOT NULL,                    
    email VARCHAR(100) UNIQUE,                    
    age INT CHECK (age >= 18),                    
    salary NUMERIC(10,2) CHECK (salary > 0),      
    hire_date DATE DEFAULT CURRENT_DATE,         
    dept_id INT,                                  
    work_period TSRANGE,                          

    CONSTRAINT fk_department
        FOREIGN KEY (dept_id)
        REFERENCES departments(dept_id),

    CONSTRAINT unique_work_time
        EXCLUDE USING GIST (
            dept_id WITH =,
            work_period WITH &&
        )
);

SELECT * FROM employees;

SELECT * FROM departments;

INSERT INTO departments (dept_name)
VALUES ('IT'), ('HR');

INSERT INTO employees (name,email,age,salary,dept_id,work_period)
VALUES ('Manish','manish@gmail.com',22,65000.00,1,'[2024-01-01, 2024-06-01)');

