-- Creat Database Query
CREATE DATABASE persondb;

-- Create Table Query
CREATE TABLE person(
	id INT,
	name VARCHAR(100),
	city VARCHAR(100)
);

-- Insert Query
INSERT INTO person(id, name, city) 
VALUES
(101, 'Vraj', 'Surat'),
(102, 'Vishal', 'Surat'),
(103, 'Pankaj', 'Vadodara'),
(104, 'Sachin', 'Ahmedabad'),
(105, 'Sachin', 'Vadodara');

-- Select Query
SELECT * FROM person;

--Select Field Query
SELECT name FROM person;

--Update Query
UPDATE person
SET city = 'Surat'
WHERE name = 'Pankaj';

--Delete Query
DELETE FROM person
WHERE id = 104;

--Drop Table Query
DROP TABLE person;

--Drop Database Query
DROP DATABASE persondb;
