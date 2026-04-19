#Create database
CREATE DATABASE company_db;
USE company_db;

#ORDERS TABLE

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    amount INT
);

INSERT INTO orders VALUES
(1, 'nisha', 'kathmandu', 2000),
(2, 'ayush', 'newyork', 8000),
(3, 'bipina', 'kathmandu', 9000),
(4, 'shalini', 'newyork', 5000);

# EMPLOYEES TABLE
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT
);

INSERT INTO employees VALUES
(1, 'nisha', 101),
(2, 'ayush', 102),
(3, 'bipina', 103),
(4, 'kusum', NULL);


#DEPARTMENT TABLE
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO department VALUES
(101, 'hr'),
(102, 'finance'),
(104, 'marketing');

#EMP TABLE FOR WINDOW FUNCTIONS

CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO emp VALUES
(1, 'nisha', 'it', 30000),
(2, 'shalini', 'it', 45000),
(3, 'bipina', 'it', 35000),
(4, 'matrika', 'it', 31000),
(5, 'nick', 'hr', 20000),
(6, 'arbin', 'hr', 10000);