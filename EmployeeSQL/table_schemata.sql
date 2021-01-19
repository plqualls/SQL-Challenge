--Employees table
create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (emp_title_id)
);	
--Import employee.csv file from data folder.

--View employee table	
SELECT * FROM employees;
	
--Department table
create table department (
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL);
--Import departments.csv file from data folder.

--View department table
SELECT * FROM department;
	
--Titles table
create table titles (
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR);
--Import titles.csv file from data folder.

--View titles table
SELECT * FROM titles;

--Employees specified by department table.
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no)
);
--Import dept_emp.csv file from data folder.

--View dept_emp table
SELECT * FROM dept_emp;

--Department manager table
create table dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES department (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
--Import dept_manager.csv file from data folder.

--View dept_manager tables
SELECT * FROM dept_manager;

--Salaries table
create table salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--Import salaries.csv file from data folder.

--View salaries table
SELECT * FROM salaries;


	