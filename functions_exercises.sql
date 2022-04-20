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
SELECT COUNT(*) FROM employees WHERE MONTH(birth_date)= 12 AND DAY(birth_date)= 25;

#OR
SELECT COUNT(*) FROM employees WHERE birth_date LIKE '%-12-25';

#Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT COUNT(*) FROM employees WHERE MONTH(birth_date) =12
AND DAY(birth_date)= 25
AND hire_date  LIKE '199%';

#Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT  first_name, last_name
FROM employees
WHERE MONTH(birth_date)=12
AND DAY(birth_date)=25
AND hire_date Like '199%'
ORDER BY birth_date, hire_date DESC;

#If you only wanted to return one employee you can do a limit clause
#LIMIT 1

#For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).


SELECT first_name, last_name, CONCAT(datediff(now(), hire_date), ' days')
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 and 1999
ORDER BY datediff(now(), hire_date) DESC;
