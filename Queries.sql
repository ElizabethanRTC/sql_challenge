---List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no;

---List first name, last name, and hire date for employees who were hired in 1986.
SELECT  first_name, last_name, hire_date 
From employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986; 

---List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d
LEFT JOIN dept_manager dm ON dm.dept_no = d.dept_no
LEFT JOIN employees e ON dm.emp_no = e.emp_no
ORDER BY d.dept_no, emp_no;   

---List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT Join dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON d.dept_no = de.dept_no
ORDER BY e.emp_no;

---List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND SUBSTRING(last_name, 1, 1) = 'B'
ORDER BY last_name;

---List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT d.emp_no, e.last_name, e.first_name, 'Sales'
FROM (SELECT * FROM dept_emp WHERE dept_no =
    (SELECT dept_no FROM departments WHERE dept_name = 'Sales')
    ) d

LEFT JOIN employees e ON d.emp_no = e.emp_no
ORDER BY e.last_name, e.first_name;

---List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e 
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN departments d ON d.dept_no = de.dept_no
AND d.dept_name IN ('Sales', 'Development')
ORDER BY e.last_name, e.first_name;

---In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) cnt from employees group BY last_name 
ORDER BY cnt DESC;

