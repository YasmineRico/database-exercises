
USE employees;

#Modify your first query to order by first name. The first result should be Irena Pelz and the last result should be Vidya Awdeh.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;


#Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

#Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

#Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows. -- Changed line 5


#Add a condition to the previous query to find everybody with those names who is also male — 441 rows. -- changed line 5

#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE '%E';

#Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT last_name
From employees
Where last_name LIKE 'E%'
  AND last_name Like '%E';

#Find all employees with a 'q' in their last name but not 'qu' — 547 rows.

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
          AND last_name NOT LIKE '%qu%';