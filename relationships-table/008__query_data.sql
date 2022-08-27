USE company;

SELECT e.id, e.first_name, e.last_name, p.title
FROM employees e
         LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
         LEFT JOIN projects AS p ON pe.project_id = p.id;


SELECT e.id, e.first_name, e.last_name, p.title
FROM employees e
         INNER JOIN projects_employees AS pe ON pe.employee_id = e.id
         INNER JOIN projects AS p ON pe.project_id = p.id;


SELECT e.id AS employee_id, e.first_name, e.last_name, t.team_name
FROM employees e
         INNER JOIN teams t ON e.team_id = t.id
WHERE t.team_name = 'Data Analysts';


-- Which employees are in building number 3

SELECT e.id, e.first_name, e.last_name, c.building_name
FROM employees e
         INNER JOIN teams t ON e.team_id = t.id
         INNER JOIN company_buildings c ON t.buildings_id = c.id
WHERE c.id = 3
ORDER BY e.birth_date;