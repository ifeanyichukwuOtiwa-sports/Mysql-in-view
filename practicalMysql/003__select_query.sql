USE mysql_practice_db;

# Write a query to select all the data from the dept table.
SELECT * FROM departments;

#Query to display dep names
SELECT dep_name FROM departments;

#Eliminate duplicates from SELECT clause with DISTINCT
#SELECT minimal Salary without duplicates
SELECT DISTINCT min_salary from jobs;

#get the name of a country wit country_id "IT"
SELECT country_name FROM country where country_id = 'IT';


#Write a query to display job title, minimal salary with 10% increased minimal salary.
SELECT job_title, min_salary, min_salary * 1.1 AS increased_min_salary FROM jobs;


#Write a query to get employee names with hire date greater than Jan 1st, 2017.
SELECT CONCAT(first_name, ' ', last_name) AS employee_name, hire_date
FROM employees
WHERE hire_date > '2017-01-01';

#Write a query to get employee names with hire date greater than January 1st, 2017 and salary less than $5,000.
SELECT CONCAT(first_name, ' ', last_name) AS employee_names, hire_date, CONCAT('$', salary) AS salary
FROM employees
WHERE hire_date > '2017-01-01' AND salary < 5000;

# Write a query to get employee job title for Shipping Manager or minimal salary is $5,000.
SELECT job_title, CONCAT('$', min_salary) AS salary
FROM jobs
WHERE job_title = 'Shipping Manager' OR min_salary = 5000;

#9: Write a query to state/province and country ID with city in Seattle or Toronto.
SELECT state_province, country_id, city FROM locations
WHERE city IN ('Seattle', 'Toronto');

#10: Write a query to get employee names with hire date from January 1st, 2014 to December 31, 2015
SELECT CONCAT(first_name, ' ', last_name) AS employees_names, hire_date
FROM employees
WHERE hire_date BETWEEN '2014-01-01' AND '2015-12-31';

SELECT * FROM employees;

#11: Write a query to find cities without states or provinces.
SELECT city, state_province, country_id
FROM locations
WHERE state_province = '';

#12: Write a query to find cities with states or provinces
SELECT location_id, city, state_province
FROM locations
WHERE state_province <> '';

#13: Write a query to get country IDs and country names that begins with “U”
SELECT country_id, country_name
FROM country
WHERE country_name LIKE 'U%';

#14: Write a query to get country ID and full country name for “Isr?el
SELECT country_id, country_name
FROM country
WHERE country_name LIKE 'Isr_el';

#Write a query to display the department names in ascending order.
SELECT dep_name FROM departments
ORDER BY dep_name;

#16: Write a query to display the department names in descending order
SELECT dep_name FROM departments
ORDER BY dep_name DESC;

#17: Write a query to display employee names, salary and department ID by ascending order of department and salary.
SELECT CONCAT(first_name, ' ', last_name) AS employee_names, salary, dep_id
FROM employees
ORDER BY dep_id, salary;

# [ALIASES]
# Write a query to use alias names for minimum salary and maximum salary
SELECT MIN(salary) AS MINIMUM_SALARY, MAX(salary) AS MAXIMUM_SALARY, AVG(salary) AS AVERAGE
FROM employees;

