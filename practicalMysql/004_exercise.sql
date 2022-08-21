USE mysql_practice_db;


#1: Write a query to display all the countries.
SELECT * FROM country;

#2 Write a query to display specific columns like email and phone number for all the employees.
SELECT first_name, last_name, email, phone
FROM employees;

#3: Write a query to display the data of employee whose last name is “Fay”.
SELECT * FROM employees
WHERE last_name = 'Fay';


#4: Write a query to find the hire date for employees whose last name is “Grant” or “Whalen”.
SELECT hire_date, CONCAT(first_name, ' ', last_name) AS employee_name
FROM employees
WHERE last_name IN ('Grant', 'Whalen');

#5: Write a query to display name of the employee who is shipping manager
SELECT first_name, last_name, job_id
FROM employees WHERE job_id = (SELECT job_id FROM jobs WHERE job_title = 'Shipping Manager');

#6: Write a query to get all the employees who work for department 20.
SELECT * FROM employees WHERE dep_id = 20;

#7: Write a query to display the departments in the descending order
SELECT dep_name FROM departments
ORDER BY dep_name DESC;

#8: Write a query to display all the employees whose last name starts with “M”.
SELECT CONCAT(last_name, ' ', first_name) AS employee_names
FROM employees
WHERE last_name LIKE 'M%';

#9: Display name of the employees whose hire dates are between 2015 and 2017.
SELECT CONCAT(last_name, ' ', first_name) AS employee_names, hire_date
FROM employees
WHERE hire_date BETWEEN '2015-01-01' AND '2017-12-31';

#10: Write a query to display jobs where the maximum salary is less than 5000.
SELECT * FROM jobs
WHERE max_salary < 5000;

#11: Write a query to display email address in lower case.
SELECT LOWER(email) FROM employees;

#12: Write a query to display name of the employees who were hired in 2015.
SELECT CONCAT(last_name, ' ', first_name) AS employee_names, hire_date
FROM employees
WHERE hire_date = EXTRACT(YEAR FROM '2015-01-01');


#13: Write a query to insert an employee “Paul Newton” in department 20.
INSERT INTO employees(emp_id, first_name, last_name, dep_id, phone, hire_date, email)
VALUES (13, 'Paul', 'Newton', 20, '222.222.222', '2015-05-17', 'PNWTN');


