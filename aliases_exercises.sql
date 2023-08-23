USE employees;

# Department name and Department Managers
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

# Department name with ONLY Names of Female Managers
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F';


# Get count of each title in Customer Service Department
SELECT t.title  AS Job_Title,
       COUNT(*) AS Total
FROM titles AS t
         JOIN dept_emp as de
              ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
  AND de.to_date = '9999-01-01'
  AND t.to_date = '9999-01-01'
GROUP BY t.title;


# Find current salary of each department manager
SELECT d.dept_name AS Department_Name,
       CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager,
       s.salary AS Salaries
FROM employees as e
         JOIN dept_manager dm
              ON dm.emp_no = e.emp_no
         JOIN departments d
              ON d.dept_no = dm.dept_no
         JOIN salaries s
              ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY dept_name;