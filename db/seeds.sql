INSERT INTO department (dept_name, dept_id)
VALUES ("Sales", 1), 
("Engineering", 2), 
("Finance", 3), 
("Legal", 4);

INSERT INTO role (title, salary, dept_id)
VALUES ("Salesperson", 50000, 1), 
("Software Engineer", 80000, 2), 
("Lawyer", 85000, 3),
("Accountant",75000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Bob", "Michaels", 1, NULL)
("Phil", "Scott", 2, NULL)
("Rachel", "Green", 3, NULL)
("Vanessa", "Rodriguez", 4, NULL)