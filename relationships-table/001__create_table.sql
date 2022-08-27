CREATE DATABASE company;
USE company;

CREATE TABLE employees
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300)        NOT NULL,
    last_name  VARCHAR(300)        NOT NULL,
    birth_date DATE                NOT NULL,
    email      VARCHAR(200) UNIQUE NOT NULL
    -- FOREIGN KEY (email) REFERENCES intranet_accounts(email) ON DELETE SET NULL
);

CREATE TABLE intranet_accounts
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    email    VARCHAR(200) NOT NULL,
    password VARCHAR(200) NOT NULL,
    FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE

);
