use employees;
select distinct title from titles;

select distinct last_name
from employees
where last_name like '%e'and last_name like 'e%'
group by last_name;

select distinct first_name, last_name
from employees
where last_name like '%e'and last_name like 'e%'
and first_name like '%e'and last_name like 'e%'
group by first_name, last_name;

select distinct last_name, count(last_name)
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

SELECT count(first_name), gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
group by gender;