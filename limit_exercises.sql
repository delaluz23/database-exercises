use employees;
select * from employees;
SELECT DISTINCT last_name
FROM employees
order by last_name desc
LIMIT 10;
select * from salaries;
select emp_no
from salaries
order by salary
limit 5;
SELECT emp_no
FROM salaries
ORDER BY salary
LIMIT 5 OFFSET 0;
SELECT emp_no
FROM salaries
ORDER BY salary
LIMIT 5 OFFSET 5;
SELECT emp_no
FROM salaries
ORDER BY salary
LIMIT 10;



