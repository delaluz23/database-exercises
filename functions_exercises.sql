use employees;
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE first_name LIKE 'E%' AND last_name LIKE '%E';
select * from employees;
select * from employees
where month (birth_date) = 12
and dayofmonth(birth_date) = 25;
select * from employees
where month (birth_date) = 12
  and dayofmonth(birth_date) = 25
and year(hire_date) between 1990 and 1999;
select * from employees
where month (birth_date) = 12
  and dayofmonth(birth_date) = 25
  and year(hire_date) between 1990 and 1999
order by  hire_date, birth_date;

select *, DATEDIFF(NOW(), hire_date)
from employees
where month (birth_date) = 12
  and dayofmonth(birth_date) = 25
  and year(hire_date) between 1990 and 1999;




# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# order by first_name;
# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# order by first_name , last_name;
# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# order by last_name , first_name;
# select * from employees where last_name like '%e%'
# order by emp_no;
# select * from employees where last_name like '%e%'
# order by emp_no desc;