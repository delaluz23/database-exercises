use employees;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
order by first_name;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
order by first_name , last_name;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
order by last_name , first_name;
select * from employees where last_name like '%e%'
order by emp_no;
select * from employees where last_name like '%e%'
order by emp_no desc;

# SELECT * FROM employees WHERE last_name like ('e%');
# SELECT * FROM employees WHERE last_name like ('%q%');
# SELECT * FROM employees WHERE first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';
# SELECT * FROM employees
# WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
#   AND gender = 'M';
# SELECT * FROM employees WHERE last_name like ('E%') or last_name like ('%e');
# SELECT * FROM employees WHERE last_name like('E%') and last_name like ('%e');
# SELECT * FROM employees WHERE last_name like ('%q%') and last_name not like ('%qu%');
