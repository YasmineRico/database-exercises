USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5;

SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;

#Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'e%e';

#Find all employees born on Christmas — 842 rows.

#Find all employees hired in the 90s and born on Christmas — 362 rows.

#Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

#For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
