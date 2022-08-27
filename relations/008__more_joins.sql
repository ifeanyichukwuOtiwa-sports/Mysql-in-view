USE relations;

# fetch all cities and fetch users that leave in them

SELECT c.city_name, CONCAT(u.first_name, ' ', u.last_name) AS user_name
FROM cities AS c
         LEFT JOIN addresses a ON c.id = a.city_id
         LEFT JOIN users u ON a.id = u.address_id
WHERE first_name IS NOT NULL;