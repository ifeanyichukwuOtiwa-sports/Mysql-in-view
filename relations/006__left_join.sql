USE relations;

SELECT u.first_name AS first_name, a.street_name AS street, a.house_number AS house_number
FROM users AS u
         INNER JOIN addresses AS a ON u.address_id = a.id;

SELECT u.first_name AS first_name, a.street_name AS street, a.house_number AS house_number
FROM addresses AS a
         LEFT JOIN users AS u ON u.address_id = a.id;