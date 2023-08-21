use employees;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE last_name like ('e%');
SELECT * FROM employees WHERE last_name like ('%q%');
SELECT * FROM employees WHERE first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';
SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'M';
SELECT * FROM employees WHERE last_name like ('E%') or last_name like ('%e');
SELECT * FROM employees WHERE last_name like('E%') and last_name like ('%e');
SELECT * FROM employees WHERE last_name like ('%q%') and last_name not like ('%qu%');




