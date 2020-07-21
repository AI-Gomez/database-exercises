###Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen
select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;

###Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig
select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;

###Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda
select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

###Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change
select last_name
from employees 
where last_name like 'E%'
order by emp_no;


###Now reverse the sort order for both queries.
select last_name
from employees 
where last_name like 'E%'
order by emp_no desc;

#Find all employees hired in the 90s — 135,214 rows
select *
from employees
where hire_date like '199%'

###Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini
select *
from employees
where birth_date like '%-12-25'
order by birth_date asc, hire_date desc;

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


