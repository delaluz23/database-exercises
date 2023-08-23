CREATE DATABASE if not exists join_test_db;
USE join_test_db;
CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id)
VALUES ('author1', 'author1@example.com', 2),
       ('author2', 'author2@example.com', 2),
       ('author3', 'author3@example.com', 2),
       ('null_role_user', 'null_role@example.com', null);

SELECT users.name, roles.name AS role
FROM users
         JOIN roles ON users.role_id = roles.id;


SELECT users.name, roles.name AS role
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;





SELECT roles.name, COUNT(users.id) AS user_count
FROM roles
         LEFT JOIN users ON roles.id = users.role_id
GROUP BY roles.name;


# /////////////////////////////////////////////////////////


Use employees;


SELECT d.dept_name AS "Deparment Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
FROM employees as e
         JOIN dept_manager as dm ON dm.emp_no = e.emp_no
         JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT d.dept_name AS "Deparment Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
FROM employees as e
         JOIN dept_manager as dm ON dm.emp_no = e.emp_no
         JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F';

DESCRIBE dept_emp;
# Find the current titles of employees currently working in the Customer Service department.

SELECT t.title AS title, COUNT(de.emp_no) AS total
From titles t
         JOIN dept_emp de
              ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
  AND t.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY t.title;


# Find the current salary of all current managers.

SELECT d.dept_name                            AS "Deparment Name",
       CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager",
       s.salary                               AS Salary
FROM employees as e
         JOIN dept_manager as dm ON dm.emp_no = e.emp_no
         JOIN departments as d ON d.dept_no = dm.dept_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name

SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS "Employee",
       d.dept_name                                AS "Department",
       CONCAT(mgr.first_name, ' ', mgr.last_name) AS "
Manager"
FROM employees AS emp
         JOIN dept_emp AS de ON emp.emp_no = de.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS mgr ON dm.emp_no = mgr.emp_no
WHERE de.to_date = '9999-01-01'
  AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;