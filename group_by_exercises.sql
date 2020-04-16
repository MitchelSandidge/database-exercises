USE employees;

SELECT DISTINCT title
FROM employees.titles;


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;


SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;


# Find the unique last names with a 'q' but not 'qu'.

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


-- Add a COUNT() to your results and use ORDER BY to make it easier
-- to find employees whose unusual name is shared with others.

SELECT first_name, last_name, COUNT(*)
FROM employees
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;



SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
