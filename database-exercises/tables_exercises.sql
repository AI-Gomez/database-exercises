show databases;
use employees;
show tables;
DESCRIBE employees;
#emp_no / hire_date = numeric type
#first_name / last_name = string type
#all
#pri
describe departments;
show create table dept_manager;
#dept_manager	CREATE TABLE `dept_manager` (↵  `emp_no` int(11) NOT NULL,↵  `dept_no` char(4) NOT NULL,↵  `from_date` date NOT NULL,↵  `to_date` date NOT NULL,↵  PRIMARY KEY (`emp_no`,`dept_no`),↵  KEY `dept_no` (`dept_no`),↵  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,↵  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE↵) ENGINE=InnoDB DEFAULT CHARSET=latin1



