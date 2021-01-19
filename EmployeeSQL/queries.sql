---1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--Using info below
--From employees table: emp_no, last_name, first_name, sex
--From salaries table: emp_no, salary
--Change headers using the "AS" function.
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name",
	   e.sex AS "Gender", s.salary AS "Salary"	   
FROM employees AS e
INNER JOIN salaries AS s
ON s.emp_no = e.emp_no
ORDER BY s.emp_no;

---2. List first name, last name, and hire date for employees who were hired in 1986.
--Using info below
--From employees table: first_name, last_name, hire_date
--Change headers using the "AS" function.
SELECT e.first_name AS "First Name", e.last_name AS "Last Name", e.hire_date AS "Hire Date"
FROM employees AS e
WHERE extract(year from hire_date)=1986;

---3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
--Using info below
--From department table: dept_no, dept_name
--From dept_manager table: dept_no,emp_no
--From employees table: last_name, first_name
SELECT d.dept_no AS "Department Number", d.dept_name AS "Department Name", m.emp_no AS "Mgr Employee Number",
				   e.last_name AS "Last Name", e.first_name AS "First Name"
FROM department AS d
INNER JOIN dept_manager AS m 
ON m.dept_no = d.dept_no
INNER JOIN employees AS e
ON e.emp_no = m.emp_no;

---4. List the department of each employee with the following information: employee number, last name, first name, and department name.
--Using info below
--From employee table: emp_no, first_name, last_name, emp_no
--From department table: dept_name, dept_no
SELECT e.emp_no AS "Employee Number", e.first_name AS "First Name", e.last_name AS "Last Name", d.dept_name AS "Department Name"
FROM employees AS e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN department as d
ON d.dept_no = de.dept_no;
