
#Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows 
select first_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

#Find all employees whose last name starts with 'E'
select last_name
from employees 
where last_name like 'E%';

#Find all employees hired in the 90s — 135,214 rows
select *
from employees
where hire_date like '199%'

#Find all employees born on Christmas
select *
from employees
where birth_date like '%-12-25';

#Find all employees with a 'q' in their last name
select last_name
from employees
where last_name like '%q%';

#Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
select first_name 
from employees 
where first_name = 'Irena'
OR first_name = 'Vidya'
or first_name = 'Maya';

#Add a condition to the previous query to find everybody with those names who is also male
select firs_name 
from employees
where gender = 'M'
and (
	first_name = 'Irena'
	or first_name = 'Vidya'
	or first_name = 'Maya');

#Find all employees whose last name starts or ends with 'E'
select last_name 
from employees
where last_name like 'e%'
or last_name like '%e';

#Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
select last_name 
from employees
where last_name like 'e%'
and last_name like '%e';

#Find all employees hired in the 90s and born on Christmas
select * 
from employees
wher hire_date like '199%'
and birth_date like '%-12-25';

#Find all employees with a 'q' in their last name but not 'qu'
select last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%';


