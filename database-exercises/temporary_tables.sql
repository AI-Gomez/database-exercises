use darden_1044;

#1 Using the example from the lesson, re-create the employees_with_departments table.
CREATE TEMPORARY TABLE ewd AS
SELECT e.emp_no, e.first_name, e.last_name, de.dept_no, d.dept_name
FROM employees.employees AS e
JOIN employees.dept_emp AS de
    USING(emp_no) 
JOIN employees.departments AS d
    USING(dept_no)
LIMIT 100;

select *
from ewd;

#A Add a column named full_name to this table. It should be a VARCHAR whose length is the sum of the lengths of the first name and last name columns
alter table ewd add column full_name varchar(31);
select *
from ewd;

#B Update the table so that full name column contains the correct data
update ewd
set full_name = concat(first_name, ' ', last_name);

select *
from ewd;

#C Remove the first_name and last_name columns from the table
alter table ewd drop column first_name;
alter table ewd drop column last_name;

select *
from ewd;


#2 Create a temporary table based on the payment table from the sakila database
CREATE TEMPORARY TABLE payments AS
SELECT sp.payment_id, sp.customer_id, sp.staff_id, sp.rental_id, sp.amount, sp.payment_date, sp.last_update
FROM sakila.payment AS sp
LIMIT 100;

select *
from payments;

#2A Write the SQL necessary to transform the amount column such that it is stored as an integer representing the number of cents of the payment. For example, 1.99 should become 199
alter table payments add column amounts integer(100);

update payments
set amounts = amount * 100;

select *
from payments;

#3 Find out how the average pay in each department compares to the overall average pay. In order to make the comparison easier, you should use the Z-score for salaries. In terms of salary, what is the best department to work for? The worst?



create temporary table salaryz as
select employees.departments.dept_name
from employees.departments;

select *
from salaryz;

alter table salaryz add column salary_z_score varchar(100);

update salaryz
set salary_z_score = employees.salaries.salary;

update salaryz
set salary_z_score = employees.salaries.salary;

select *
from salaryz;


