USE employees;

#Find all the employees with the same hire date as employee 101010 using a subquery. 69 Rows
SELECT concat(first_name, ' ', last_name, ' ', hire_date)AS 'Name and Hire Date'
FROM employees
WHERE hire_date = (SELECT hire_date from employees where emp_no = 101010);


#Find all the titles held by all employees with the first name Aamod. 314 total titles, 6 unique titles

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);


#Find all the current department managers that are female.

select first_name, last_name
from employees
where emp_no IN (
    select emp_no
    from dept_manager
    where to_date > NOW()
)
  AND gender = 'F';


#+------------+------------+
#| first_name | last_name  |
#+------------+------------+
#| Isamu      | Legleitner |
#| Karsten    | Sigstam    |
#| Leon       | DasSarma   |
#| Hilary     | Kambil     |
#+------------+------------+