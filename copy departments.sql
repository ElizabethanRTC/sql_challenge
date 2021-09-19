copy departments 
from 'C:\Users\Public\data\departments.csv' 
delimiter ',' 
csv header;
Select * from departments;

copy salaries 
from 'C:\Users\Public\data\salaries.csv' 
delimiter ',' 
csv header;
Select * from salaries;

copy titles 
from 'C:\Users\Public\data\titles.csv' 
delimiter ',' 
csv header;
Select * from titles;

copy employees 
from 'C:\Users\Public\data\employees.csv' 
delimiter ',' 
csv header;
Select * from employees;

copy dept_emp 
from 'C:\Users\Public\data\dept_emp.csv' 
delimiter ',' 
csv header;
Select * from dept_emp;

copy dept_manager 
from 'C:\Users\Public\data\dept_manager.csv' 
delimiter ',' 
csv header;
Select * from dept_manager;



