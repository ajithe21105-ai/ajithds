create database lrjoin_db;
use lrjoin_db;

-- 1. Create the departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- 2. Insert data into departments
INSERT INTO departments (dept_id, dept_name) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');

-- 3. Create the employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 4. Insert data into employees
INSERT INTO employees (emp_id, emp_name, dept_id) VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 101),
(4, 'David', NULL),
(5, 'Eve', 103);




select *
from employees, departments;

select *
from departments;



-- Write a query to display all employees and their department names.

select employees.emp_name , departments.dept_name
from employees
left join departments
on employees.dept_id = departments.dept_id;


-- Write a query to display all employees along with department names, and show "No Department" if an employee is not assigned to any department.

select employees.emp_name , ifnull(departments.dept_name, "no department") as departments
from employees
left join departments
on employees.dept_id = departments.dept_id;


 -- Write a query to find employees who do not belong to any department.

select *
from employees
left join departments
on employees.dept_id = departments.dept_id 
where departments.dept_id is null;


-- Write a query to display all departments and the number of employees in each department.

select departments.dept_name , count(employees.dept_id) as total_emp
from employees
left join departments
on employees.dept_id = departments.dept_id
group by employees.dept_id;



-- Write a query to display all employees and only their department name if it is 'IT', otherwise show NULL.

select employees.emp_name, departments.dept_name
from employees
left join departments
on employees.dept_id = departments.dept_id and dept_name = "it";   


 -- Write a query to display only employees who belong to the 'HR' department.

select *
from employees
left join departments
on employees.dept_id = departments.dept_id 
where departments.dept_name="hr";


-- Write a query to display employee name and department name, but only include departments where dept_id = 101 using LEFT JOIN condition.

select employees.emp_name, departments.dept_name
from employees
left join departments
on employees.dept_id = departments.dept_id
where dept_id = 101;


--  Write a query to display all departments that do not have any employees.

select employees.emp_name, departments.dept_id
from employees
left join departments
on employees.dept_id = departments.dept_id 
where employees.dept_id is null;


--  9)Write a query to display employee name and department name, sorted by department name.

select d.dept_name , e.emp_name
from employees e
left join departments d
on e.dept_id = d.dept_id
order by d.dept_name;

-- 10)Write a query to display:
-- employee name
-- department name
-- a new column status
-- "Assigned" if employee has a department             -- should i use alter add
-- "Not Assigned" if no department



SELECT e.emp_name, 
d.dept_name , 
IF(d.dept_name is not null , "assigned" , "Not Assigned") AS status
FROM employees e
LEFT JOIN departments d 
ON e.dept_id = d.dept_id;

