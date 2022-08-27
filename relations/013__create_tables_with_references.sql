USE relations;

CREATE TABLE cities
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(200) NOT NULL
);


CREATE TABLE addresses
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    street_name  VARCHAR(300) NOT NULL,
    house_number VARCHAR(50)  NOT NULL,
    city_id      INT          NOT NULL
);


CREATE TABLE users
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name  VARCHAR(300) NOT NULL,
    email      VARCHAR(300),
    address_id INT,
    FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE
);
