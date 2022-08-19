use sales_example;


SELECT * FROM sales
WHERE date_created > '2021-11-01' AND date_created < '2022-05-01';

# BETWEEN is inclusive on both ends for ranges
SELECT * FROM sales
WHERE date_created BETWEEN '2021-11-02' AND '2022-04-30';

# select ranges
SELECT * FROM sales
WHERE volume > 1000 AND volume < 100000;