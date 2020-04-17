USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE e.emp_no = 10001;



-- write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01';



-- Find the name of all departments currently managed by women.

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';



# Find the current titles of employees currently working in the Customer Service department.

SELECT t.title AS Title, COUNT(*) AS Count
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON de.dept_no = d.dept_no
         JOIN titles AS t
              ON e.emp_no = t.emp_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01'
GROUP BY t.title;



# Find the current salary of all current managers.

SELECT d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS Name, s.salary AS Salary
FROM employees AS e
JOIN salaries AS s
ON s.emp_no = e.emp_no
JOIN dept_manager AS dm
ON e.emp_no = dm.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';



# Bonus: Find the names of all current employees, their department name, and their current manager's name.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Name, d.dept_name AS Department, CONCAT(em.first_name, ' ', em.last_name) AS Manager
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
ON de.dept_no = dm.dept_no
JOIN employees AS em
ON dm.emp_no = em.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name
LIMIT 40;

