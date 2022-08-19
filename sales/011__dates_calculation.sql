USE sales_example;

SELECT * FROM sales
WHERE date_fulfilled - date_created <= 5;

SELECT id, date_created, date_fulfilled, date_fulfilled - date_created AS difference, customer_name, product_name, volume
FROM sales
WHERE date_fulfilled - date_created <= 5;

SELECT * FROM sales
WHERE date_fulfilled - date_created > 5;


SELECT * FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) >= 5;

SELECT EXTRACT(DAY FROM date_fulfilled - date_created) AS difference, id, date_created, date_fulfilled, customer_name,
       product_name,
       volume, is_recurring, is_disputed FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) >= 5;