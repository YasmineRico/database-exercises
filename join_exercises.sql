USE employees;

# 1. Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

#+--------------------+--------------------+
#| Department Name    | Department Manager |
#+--------------------+--------------------+
#| Customer Service   | Yuchang Weedman    |
#| Development        | Leon DasSarma      |
#| Finance            | Isamu Legleitner   |
#| Human Resources    | Karsten Sigstam    |
#| Marketing          | Vishwani Minakawa  |
#| Production         | Oscar Ghazalie     |
#| Quality Management | Dung Pesch         |
#| Research           | Hilary Kambil      |
#| Sales              | Hauke Zhang        |
#+--------------------+--------------------+

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
where to_date > NOW()
order by dept_name;

# 2. Find the name of all departments currently managed by women.

#+------------------+--------------------+
#| Department Name  | Department Manager |
#+------------------+--------------------+
#| Development      | Leon DasSarma      |
#| Finance          | Isamu Legleitner   |
#| Human Resources  | Karsten Sigstam    |
#| Research         | Hilary Kambil      |
#+------------------+--------------------+

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE to_date > NOW()
  and e.gender = 'f'
order by dept_name;


# 3. Find the current titles of employees currently working in the Customer Service department.

#+--------------------+-------+
#| title              | Total |
#+--------------------+-------+
#| Senior Staff       | 11268 |
#| Staff              |  3574 |
#| Senior Engineer    |  1790 |
#| Engineer           |   627 |
#| Technique Leader   |   241 |
#| Assistant Engineer |    68 |
#| Manager            |     1 |
#+--------------------+-------+


# 4. Find the current salary of all current managers.

#+--------------------+--------------------+--------+
#| Department Name    | Department Manager | Salary |
#+--------------------+--------------------+--------+
#| Customer Service   | Yuchang Weedman    |  58745 |
#| Development        | Leon DasSarma      |  74510 |
#| Finance            | Isamu Legleitner   |  83457 |
#| Human Resources    | Karsten Sigstam    |  65400 |
#| Marketing          | Vishwani Minakawa  | 106491 |
#| Production         | Oscar Ghazalie     |  56654 |
#| Quality Management | Dung Pesch         |  72876 |
#| Research           | Hilary Kambil      |  79393 |
#| Sales              | Hauke Zhang        | 101987 |
#+--------------------+--------------------+--------+



# 5. ****Bonus Find the names of all current employees, their department name, and their current manager's name .


#+----------------------+------------------+-----------------+
#| Employee             | Department       | Manager         |
#+----------------------+------------------+-----------------+
#| Huan Lortz           | Customer Service | Yuchang Weedman |
#| Basil Tramer         | Customer Service | Yuchang Weedman |
#| Breannda Billingsley | Customer Service | Yuchang Weedman |
#| Jungsoon Syrzycki    | Customer Service | Yuchang Weedman |
#| Yuichiro Swick       | Customer Service | Yuchang Weedman |
#... 240,124 Rows in total