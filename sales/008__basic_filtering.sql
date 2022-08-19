use sales_example;

# 1 - Find all sakes with volume greater than 1000
SELECT * FROM sales
WHERE volume > 1000;

# 4 - find all recurring sales
SELECT * FROM sales
WHERE is_recurring IS TRUE;

# 5 find disputed sales with volume greater than 5000
SELECT * FROM sales
WHERE (is_disputed IS TRUE) AND (volume > 5000);
