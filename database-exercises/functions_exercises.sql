use employees;

#Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column named full_name.
select concat (first_name, ' ',last_name) as full_name
from employees 
where last_name like 'e%' and last_name like '%e'
order by emp_no;

#Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column named full_name.
select concat (first_name, ' ',last_name) as full_name
from employees 
where last_name like 'E%' and last_name like '%e'
order by emp_no desc;

#Convert the names produced in your last query to all uppercase
select upper(concat(first_name, ' ', last_name)) as full_name
from employees 
where last_name like 'E%' and last_name like '%e'
order by emp_no desc;

#For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use NOW() or CURDATE())
select emp_no, birth_date, hire_date, first_name, last_name, gender, datediff(curdate(), hire_date) as days_employed
from employees
where hire_date like '199%'
and birth_date like '%-12-25'
order by birth_date asc, hire_date desc;

#Find the smallest and largest salary from the salaries table.
select min(salary) as min_salary, max(salary) as max_salary
from salaries;

#Use your knowledge of built in SQL functions to generate a username for all of the employees. A username should be all lowercase, and consist of the first character of the employees first name, the first 4 characters of the employees last name, an underscore, the month the employee was born, and the last two digits of the year that they were born. Below is an example of what the first 10 rows will look like:
select first_name, last_name, birth_date
	, lower(
			concat(
				substr(first_name, 1, 1), 
				substr(last_name, 1, 4), 
				"_", 
				substr(birth_date, 6, 2), 
				substr(birth_date, 3, 2)
				)) as username
from employees
limit 10;