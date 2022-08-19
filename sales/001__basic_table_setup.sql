CREATE DATABASE IF NOT EXISTS sales_example;
USE sales_example;
DROP TABLE IF EXISTS sales;

CREATE TABLE IF NOT EXISTS sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date_created DATE DEFAULT (CURRENT_DATE),
    date_fulfilled DATE,
    customer_name VARCHAR(300) NOT NULL,
    product_name VARCHAR(300) NOT NULL,
    volume NUMERIC(10, 2) NOT NULL CHECK ( volume >= 0 ),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE

);