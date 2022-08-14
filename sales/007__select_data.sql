SELECT * FROM sales;

SELECT customer_name, product_name, volume, date_created
FROM sales;


SELECT date_created, customer_name, product_name, volume
FROM sales;

SELECT 'Hello World' AS hello,
       15000 AS number,
       date_created,
       customer_name,
       product_name,
       volume AS total_sales
FROM sales;


SELECT date_created, customer_name, product_name, CONCAT('USD ', volume / 1000)  AS total_sales
FROM sales;