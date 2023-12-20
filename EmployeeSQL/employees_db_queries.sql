-- select * from departments
-- select * from dept_emp
-- select * from dept_manager
select * from employees;
select * from salaries
-- select * from titles 

--List the employee number, last name, first name, sex, and salary of each employee.
select emp.emp_no,emp.last_name,emp.first_name,emp.sex,sal.salary
from employees emp
join salaries sal
on emp.emp_no = sal.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name,last_name,hire_date from employees where  date_part('year', hire_date) = '1986'
--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name.
SELECT dm.dept_no, dep.dept_name, e.emp_no,  e.first_name ,e.last_name
FROM dept_manager AS dm
JOIN departments AS dep
ON dm.dept_no = dep.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number,
--last name, first name, and department name.

select emp.emp_no,emp.first_name,emp.last_name,dep.dept_no,dept.dept_name
from employees emp
join dept_emp dep
on emp.emp_no = dep.emp_no
join departments dept
on dep.dept_no = dept.dept_no

--List first name, last name, and sex of each employee whose first name is Hercules 
--and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

--List each employee in the Sales department,
--including their employee number, last name, and first name.d007

select emp.emp_no,emp.first_name ,emp.last_name,dep.dept_no ,d.dept_name from 
employees emp
join dept_emp dep
on emp.emp_no = dep.emp_no 
join departments d
on dep.dept_no = d.dept_no where dep.dept_no ='d007'

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select emp.emp_no,emp.first_name ,emp.last_name,dep.dept_no ,d.dept_name from 
employees emp
join dept_emp dep
on emp.emp_no = dep.emp_no 
join departments d
on dep.dept_no = d.dept_no where dep.dept_no ='d007' OR dep.dept_no ='d005'

--List the frequency counts, in descending order, of all the employee
--last names (that is, how many employees share each last name)
select last_name,count(last_name) AS Freq_Count from employees 
group by last_name
order by Freq_Count DESC

























































