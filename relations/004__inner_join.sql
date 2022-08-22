USE relations;

SELECT u.id, u.first_name, u.last_name, u.email, a.street_name, a.house_number, c.city_name
FROM users AS u
INNER JOIN addresses a on u.address_id = a.id
INNER JOIN cities c on a.city_id = c.id;


SELECT u.id, CONCAT(u.first_name, ' ', u.last_name) AS user_name, u.email AS user_email,
       CONCAT('No', ' ', a.house_number, ' ', a.street_name, ' ', c.city_name) AS user_address
FROM users AS u
         INNER JOIN addresses a on u.address_id = a.id
         INNER JOIN cities c on a.city_id = c.id;