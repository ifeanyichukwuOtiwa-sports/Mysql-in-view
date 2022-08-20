USE sales_example;


CREATE TABLE IF NOT EXISTS sales_that_is_recurring AS
    SELECT id, customer_name, product_name, date_created, date_fulfilled
    FROM sales
    WHERE is_recurring IS TRUE;

SELECT * FROM sales_that_is_recurring;


CREATE TABLE IF NOT EXISTS bottom_10_sales AS
    SELECT * FROM sales
    ORDER BY volume
    LIMIT 10;

SELECT * FROM bottom_10_sales;

CREATE TABLE IF NOT EXISTS customer_Max AS
    SELECT * FROM sales
    WHERE customer_name LIKE 'Max%';

SELECT * FROM customer_Max;