use employees;

#1 Write a query that returns all employees (emp_no), their department number, their start date, their end date, and a new column 'is_current_employee' that is a 1 if the employee is still with the company and 0 if not.
SELECT dept_emp.emp_no
		, max(dept_emp.to_date) AS last_date_of_employment
		, max(CASE WHEN dept_emp.to_date > curdate() THEN 1 ELSE 0 END) 
			AS is_current_emp
FROM dept_emp
GROUP BY dept_emp.emp_no;

#2 Write a query that returns all employee names, and a new column 'alpha_group' that returns 'A-H', 'I-Q', or 'R-Z' depending on the first letter of their last name.
SELECT first_name, 
	   last_name,
	   CASE WHEN SUBSTR(last_name, 1, 1) < 'I' THEN 'A-H'
	   		WHEN SUBSTR(last_name, 1, 1) < 'R' THEN 'I-Q'
	   		WHEN SUBSTR(last_name, 1, 1) > 'Q' THEN 'R-Z'
	   		ELSE null END AS alpha_group
FROM employees
ORDER BY alpha_group;
###or
SELECT first_name, last_name, substr(last_name, 1, 1) AS last_initial
    , CASE WHEN last_name REGEXP '^[A-H]' THEN 'A-H'
        WHEN last_name REGEXP '^[I-Q]' THEN 'I-Q'
        WHEN last_name REGEXP '^[R-Z]' THEN 'R-Z' 
        ELSE null
        END AS alpha_group 
FROM employees;

#3 How many employees were born in each decade?
select count(birth_date)
	, case when birth_date like '195%' then '1950s'
		when birth_date like '196%' then '1960s'
		end as birth_decade
FROM employees
group by birth_decade;