/*I SAVED THE BONUS WORK ON A JUPYTER NOTEBOOK FILE IN MY HOMEWORK FOLDER*/

CREATE TABLE employees(
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	gender VARCHAR(1),
	hire_date DATE);
	
select * from employees

/* join employee with salary- 1*/
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

/* Select Employees after 1986 -2 */
select * from employees 
where hire_date > '1985-12-31'

/* join employee with manager info- 3*/
SELECT dept_manager.dept_no,departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date,dept_manager.to_date
FROM dept_manager
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_manager.dept_no

/*add dept name - 4*/
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_emp.dept_no
from employees
inner join dept_emp on employees.emp_no=dept_emp.emp_no
inner join departments on departments.dept_no=dept_emp.dept_no

/* Hercules and Last name "B" - 5 */
select * from employees where first_name = 'Hercules' and last_name like 'B%'

/* Sales and Development Dept- 6*/
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_emp.dept_no
from employees
inner join dept_emp on employees.emp_no=dept_emp.emp_no
inner join departments on departments.dept_no=dept_emp.dept_no
and dept_name = 'Sales' or dept_name like 'dev%'

/*count of last name- descending 7*/
select last_name, count(*)
from employees
group by last_name
order by 2 desc;
