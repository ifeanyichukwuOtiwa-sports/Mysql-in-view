USE relations;

INSERT INTO cities(city_name)
VALUES ('Berlin'),
       ('New York'),
       ('London');


INSERT INTO addresses(street_name, house_number, city_id)
VALUES ('TestStreet', '8A', 3),
       ('Some Street', '10', 1),
       ('TestStreet', '1', 3),
       ('My Street', '101', 2);


INSERT INTO users(first_name, last_name, email, address_id)
VALUES ('Max', 'Schwarz', 'max@test.com', 2),
       ('Manuel', 'Lorentz', 'manu@test.com', 4),
       ('Julie', 'Barnes', 'julie@barnes.com', 3);