drop TABLE if exists departments;
CREATE TABLE departments (
dept_no VARCHAR NOT NULL, 
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

drop TABLE if exists salaries;
CREATE TABLE salaries (
emp_no INT NOT NULL,
salary INT NOT NULL,
PRIMARY KEY (emp_no)
);

drop TABLE if exists titles;
CREATE TABLE titles (
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL,
PRIMARY KEY (title_id)
);

drop TABLE if exists employees;
CREATE TABLE employees (
emp_no INT NOT NULL, 
emp_title_id VARCHAR(100) NOT NULL, 
birth_date DATE NOT NULL,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
sex VARCHAR(100) NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES salaries (emp_no),
FOREIGN KEY (emp_title_id)  REFERENCES titles (title_id),
Primary KEY (emp_no)
);

drop TABLE if exists dept_emp;
CREATE TABLE dept_emp (
emp_no INT  NOT NULL,
dept_no VARCHAR(100) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
PRIMARY KEY (emp_no, dept_no)
);

drop TABLE if exists dept_manager;
CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no)
);