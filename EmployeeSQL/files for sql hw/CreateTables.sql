CREATE TABLE departments(
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30)
);

SELECT * FROM departments

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(75),
	gender VARCHAR(1),
	hire_date DATE
)

SELECT * FROM employees

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

SELECT * FROM dept_manager

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
)

CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR(30),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
)

SELECT * FROM titles;