DROP DATABASE IF EXISTS employeetracker_db;
CREATE DATABASE employeetracker_db;
USE employeetracker_db;

DROP TABLE IF EXISTS department;
CREATE TABLE department (
dept_id INT NOT NULL,
dept_name VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS role;
CREATE TABLE role (
id INT NOT NULL
title VARCHAR(20) NOT NULL,
salary DECIMAL NOT NULL,
dept_id INT,
FOREIGN KEY (dept_id)
REFERENCES department(dept_id)
);

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
id INT NOT NULL,
first_name VARCHAR(30),
last_name VARCHAR(30),
role_id INT NOT NULL,
manager_id INT,
FOREIGN KEY (role_id)
REFERENCES role(id)
);