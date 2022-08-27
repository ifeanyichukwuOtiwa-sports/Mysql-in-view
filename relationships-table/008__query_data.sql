USE company;

SELECT e.id, e.first_name, e.last_name, p.title
FROM employees e
LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
LEFT JOIN projects AS p ON pe.project_id = p.id;


SELECT e.id, e.first_name, e.last_name, p.title
FROM employees e
         INNER JOIN projects_employees AS pe ON pe.employee_id = e.id
         INNER JOIN projects AS p ON pe.project_id = p.id;