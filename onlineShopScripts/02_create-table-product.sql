CREATE TABLE IF NOT EXISTS products (
  product_name VARCHAR(200),
  price NUMERIC(10,2),
  `description` TEXT,
  image VARCHAR(300),
  amount_in_stock INT
);