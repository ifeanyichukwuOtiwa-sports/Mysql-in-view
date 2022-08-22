USE relations;

CREATE TABLE IF NOT EXISTS users (
    id          INT             AUTO_INCREMENT PRIMARY KEY,
    first_name  VARCHAR(300)    NOT NULL,
    last_name   VARCHAR(300)    NOT NULL,
    email       VARCHAR(300),
    address_id  INT NOT NULL
);


CREATE TABLE IF NOT EXISTS addresses (
    id              INT             AUTO_INCREMENT PRIMARY KEY,
    street_name     VARCHAR(300)    NOT NULL,
    house_number    VARCHAR(50)     NOT NULL,
    city_id         INT             NOT NULL
);


CREATE TABLE IF NOT EXISTS cities (
    id          INT             AUTO_INCREMENT PRIMARY KEY,
    city_name   VARCHAR(200)    NOT NULL
);