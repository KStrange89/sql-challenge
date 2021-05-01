-- Queries

-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees e
LEFT JOIN salaries s ON s.emp_no = e.emp_no;


-- List first name, last name, and hire date for 
-- employees who were hired in 1986.

SELECT 
	e.first_name,
	e.last_name,
	e.hire_date
FROM employees e WHERE date_part('year', e.hire_date) = '1986';

-- List the manager of each department 
-- with the following information: 
-- department number, department name, 
-- the manager's employee number, last name, first name.

SELECT
	m.dept_no,
	d.dept_name,
	m.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager m
LEFT JOIN departments d ON d.dept_no = m.dept_no
LEFT JOIN employees e ON e.emp_no = m.emp_no;

-- select shit emps and dept

SELECT
	e.

-- select emp shit for certain people

-- select shit from emps and dept where depts like '%sale%'

-- same as above but also do development dept

-- select emp last name count desc

-- fin cept for bonus

