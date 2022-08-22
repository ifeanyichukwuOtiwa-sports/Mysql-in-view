USE relations;

SELECT u.id, u.first_name, u.last_name, u.email, a.street_name, a.house_number, a.city_id
FROM users AS u
INNER JOIN addresses a on a.id = u.address_id;