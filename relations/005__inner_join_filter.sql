USE relations;

SELECT u.id, u.first_name, u.last_name, u.email, a.street_name, a.house_number, c.city_name
FROM users AS u
         INNER JOIN addresses a on u.address_id = a.id
         INNER JOIN cities c on a.city_id = c.id
WHERE city_name= 'Berlin' OR city_name = 'New York'
ORDER BY id DESC;

