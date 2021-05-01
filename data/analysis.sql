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

-- List the department of each employee 
-- with the following information: 
-- employee number, last name, first name, and department name.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp de
LEFT JOIN employees e ON de.emp_no = e.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no;

-- List first name, last name, and sex for 
-- employees whose first name is "Hercules" and 
-- last names begin with "B."
SELECT
	e.first_name,
	e.last_name,
	e.sex
FROM employees e 
	WHERE 
		e.first_name = 'Hercules'
		AND
		e.last_name like 'B%'

-- List all employees in the Sales department, 
-- including their employee number, last name, 
-- first name, and department name.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp de
LEFT JOIN employees e ON de.emp_no = e.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development 
-- departments, including their employee number, 
-- last name, first name, and department name.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp de
LEFT JOIN employees e ON de.emp_no = e.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name  ='Development';

--In descending order, list the frequency count of 
-- employee last names

SELECT	
	e.last_name,
	COUNT(e.last_name)
FROM employees e
GROUP BY e.last_name
ORDER BY count(e.last_name) DESC;


