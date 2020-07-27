use employees;

#1 Find all the employees with the same hire date as employee 101010 using a sub-query.
select first_name, last_name, hire_date
from employees
where emp_no in (
	select emp_no
	from employees
	where hire_date = '1990-10-22');

#2 Find all the titles held by all employees with the first name Aamod.
select * 
from titles
where emp_no in (
	select emp_no
	from employees
	where first_name = 'Aamod');
	

	
#3 How many people in the employees table are no longer working for the company?
select *
from dept_emp 
where to_date in (
	select to_date
	from dept_emp
	where to_date < curdate());
	
#4 Find all the current department managers that are female.
select first_name, last_name
from employees
where emp_no in (
	select emp_no
	from dept_manager
	where gender = 'F'
	and to_date > curdate());
	

#5 Find all the employees that currently have a higher than average salary.
#154543 rows in total. Here is what the first 5 rows will look like:
select first_name, last_name, salary
from salaries
join employees on employees.emp_no = salaries.emp_no
where to_date > now()
and salary > (select avg(salary)
from salaries);


#6 How many current salaries are within 1 standard deviation of the highest salary? (Hint: you can use a built infunction to calculate the standard deviation.) What percentage of all salaries is this? 78 salaries
select count(salary)
from employees
JOIN salaries on employees.emp_no = salaries.emp_no
WHERE to_date > curdate()
    and salary >= (SELECT max(salary) - stddev(salary) as salary_total
        from salaries);
        
# B1 Find all the department names that currently have female managers.
select dept_name 
from 




select max(salary)
from salaries;

select stddev(salary)
from salaries;

select first_name, last_name, salary
from salaries
join employees on employees.emp_no = salaries.emp_no
where to_date > now()
and salary < (select max(salary)
from salaries) - (select stddev(salary)
from salaries);


select max(salary) - stddev(salary)
from salaries
;

select *
from salaries
where to_date > now()
and salary < (max(salary) - (stddev(salary)
;