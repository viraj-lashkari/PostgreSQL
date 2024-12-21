-- Create Database
CREATE DATABASE bank_db;

-- Create Table
CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    fname VARCHAR(100) NOT NULL,
    lname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    dept VARCHAR(50),
    salary DECIMAL(10,2) DEFAULT 30000.00,
    hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

-- Insert Data
INSERT INTO employees(fname, lname, email, dept, salary, hire_date)
VALUES
('Vraj', 'Lashkari', 'vraj@example.com', 'IT', 50000.00),
('Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000.00, '2019-03-22'),
('Arjun', 'Verma', 'arjun.verma@example.com', 'IT', 55000.00, '2021-06-01'),
('Suman', 'Patel', 'suman.patel@example.com', 'Finance', 60000.00, '2018-07-30'),
('Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000.00, '2020-11-10'),
('Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000.00, '2020-09-25'),
('Neha', 'Desai', 'neha.desai@example.com', 'IT', 48000.00, '2019-05-18'),
('Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', 53000.00, '2021-02-14'),
('Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000.00, '2018-12-03'),
('Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', 50000.00, '2020-04-19');

-- Select Data
SELECT * FROM employees;

-- Where Clause
SELECT * FROM employees WHERE emp_id = 5;

SELECT * FROM employees WHERE dept = 'HR';

SELECT * FROM employees WHERE salary >= 50000;

SELECT * FROM employees WHERE dept = 'HR' OR dept = 'Finance';

SELECT * FROM employees WHERE dept = 'IT' AND salary > 50000;

SELECT * FROM employees WHERE dept IN ('IT', 'Finance', 'HR');

SELECT * FROM employees WHERE dept NOT IN ('IT', 'Finance', 'HR');

SELECT * FROM employees WHERE salary BETWEEN 50000 AND 60000;

SELECT DISTINCT dept FROM employees;

-- Order By
SELECT * FROM employees ORDER BY fname ASC;

SELECT * FROM employees ORDER BY fname DESC;

SELECT * FROM employees ORDER BY emp_id DESC;

-- Limit
SELECT * FROM employees LIMIT 5;

-- Like
SELECT * FROM employees WHERE fname LIKE 'A%';

SELECT * FROM employees WHERE fname LIKE '%a';

SELECT * FROM employees WHERE fname LIKE '%a%';

SELECT * FROM employees WHERE dept LIKE '__';

SELECT * FROM employees WHERE fname LIKE '_a%';

-- Aggregates
SELECT COUNT(*) FROM employees;

SELECT COUNT(emp_id) FROM employees;

SELECT SUM(salary) FROM employees;

SELECT AVG(salary) FROM employees;

SELECT MAX(salary) FROM employees;

SELECT MIN(salary) FROM employees;

-- Group By
SELECT dept, COUNT(emp_id) FROM employees GROUP BY dept;

SELECT dept, SUM(salary) FROM employees GROUP BY dept;

-- String Functions
SELECT CONCAT(fname, ' ', lname) AS full_name FROM employees;

SELECT emp_id, CONCAT(fname, ' ', lname) AS full_name, dept FROM employees;

SELECT emp_id, CONCAT_WS(' ',fname, lname) AS full_name, dept FROM employees;

SELECT LOWER(fname) FROM employees;

SELECT UPPER(fname) FROM employees;

SELECT SUBSTRING(fname, 1, 3) FROM employees;

SELECT REPLACE(fname, 'Vraj', 'Vraj Lashkari') FROM employees;

-- Alter Table
ALTER TABLE employees ADD COLUMN job_title VARCHAR(50);

ALTER TABLE employees DROP COLUMN job_title;

ALTER TABLE employees RENAME TO employees_info;

ALTER TABLE employees_info RENAME TO employees;

ALTER TABLE employees ALTER COLUMN fname ADD NOT NULL;

ALTER TABLE employees ALTER COLUMN fname DROP NOT NULL;

ALTER TABLE employees ALTER COLUMN fname DEFAULT 'Unknown';

ALTER TABLE employees ALTER COLUMN fname DROP DEFAULT;



