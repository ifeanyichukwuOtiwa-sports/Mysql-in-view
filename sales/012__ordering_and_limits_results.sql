USE sales_example;



# by defaults returns all records in Ascending Order by Volume
SELECT * FROM sales
ORDER BY volume;

# bottom 10 sales
SELECT * FROM sales
ORDER BY volume
LIMIT 10;

# Top 10 sales
SELECT * FROM sales
ORDER BY volume DESC
LIMIT 10;

#combine with where clause
SELECT * FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC
LIMIT 10;


#Using Offset
SELECT * FROM sales
ORDER BY volume DESC
LIMIT 5
OFFSET 3;