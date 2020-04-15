USE employees;

-- ORDER BY Exercises ---------

SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;


SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;


SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;


SELECT emp_no AS 'Emp #', first_name AS 'first', last_name AS 'last..'
FROM employees
WHERE last_name LIKE ('E%')
ORDER BY emp_no;


SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC;


SELECT emp_no AS 'Emp #', first_name AS 'first', last_name AS 'last..'
FROM employees
WHERE last_name LIKE ('E%')
ORDER BY emp_no DESC;


SELECT 'Christmas birthdays, hired first' AS ' ';
SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE ('199%')
AND birth_date LIKE ('%12-25%')
ORDER BY birth_date ASC, hire_date DESC;