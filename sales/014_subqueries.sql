USE sales_example;

SELECT customer_name, product_name
FROM (SELECT * FROM sales WHERE volume > 1000) AS base_result;

CREATE OR REPLACE VIEW base_result
    AS SELECT *
       FROM sales
       WHERE volume > 1000;

SELECT customer_name, product_name FROM base_result;

#INSERTING FROM SUBQUERY
CREATE TABLE IF NOT EXISTS top_10_sales (
    id             INT PRIMARY KEY AUTO_INCREMENT,
    date_fulfilled DATE,
    customer_name  VARCHAR(300)   NOT NULL,
    product_name   VARCHAR(300)   NOT NULL,
    volume         NUMERIC(10, 2) NOT NULL CHECK ( volume >= 0 )
);

CREATE OR REPLACE VIEW top_10_sales_view
    AS SELECT date_fulfilled, customer_name, product_name, volume
       FROM sales
       ORDER BY volume DESC
       LIMIT 10;

INSERT INTO top_10_sales (date_fulfilled, customer_name, product_name, volume)
SELECT date_fulfilled, customer_name, product_name, volume
     FROM sales
     ORDER BY volume DESC
     LIMIT 10;;

SELECT * FROM top_10_sales;
