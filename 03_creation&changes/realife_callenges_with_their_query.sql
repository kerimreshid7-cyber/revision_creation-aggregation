/*Challenge 1 — Create a new table for employees
Create a table called employees with:
employee_id (auto)
name
department
salary*/

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary NUMERIC(10,2)
);


/*Challenge 2 — Add a new column
Add hire_date column to employees.*/
ALTER TABLE employees
ADD COLUMN hire_date DATE;

/*Challenge 3 — Rename column
Rename department → dept_name*/
ALTER TABLE employees
RENAME COLUMN department TO dept_name;


/*Challenge 4 — Advanced UPDATE
Increase salary by 10% for employees in IT department.*/
UPDATE employees
SET salary = salary * 1.10
WHERE dept_name = 'IT';


/*Challenge 5 — DELETE / TRUNCATE / DROP
Delete employees with salary < 3000*/
 DELETE FROM employees
WHERE salary < 3000;   
--delete once or quickly
TRUNCATE TABLE employees;
--Delete table completely:
drop table employees;

/**/
