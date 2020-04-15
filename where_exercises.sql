USE employees;

-- WHERE Exercises ---------

SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');


SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE last_name LIKE ('E%');


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE ('199%');


SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE ('%12-25%');


SELECT 'Last names with a q:' AS ' ';
SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE last_name LIKE ('%q%') LIMIT 30;


--------- Part 2 fo the exercise --------

SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE first_name = ('Irena') OR first_name = ('Vidya') OR first_name = ('Maya');


SELECT first_name AS 'fn', last_name AS 'last..', gender
FROM employees
WHERE gender = ('M')
 AND (first_name = ('Irena') OR first_name = ('Vidya') OR first_name = ('Maya'));


SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE last_name LIKE ('E%')
AND last_name LIKE ('%E');


SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE ('199%')
AND birth_date LIKE ('%12-25%');


SELECT 'Last names with a q:' AS ' ';
SELECT first_name AS 'fn', last_name AS 'last..'
FROM employees
WHERE last_name LIKE ('%q%')
AND last_name NOT LIKE ('%qu%');
