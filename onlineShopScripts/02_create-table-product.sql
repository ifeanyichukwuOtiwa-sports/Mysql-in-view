CREATE TABLE IF NOT EXISTS products (
  product_name VARCHAR(200),
  price NUMERIC(10,2),
  `description` TEXT,
  image_path VARCHAR(400),
  amount_in_stock SMALLINT
);


INSERT INTO products (product_name, price, description, image_path, amount_in_stock)
VALUES ('Product 1', '10.00', 'This is a product', 'images/product1.jpg', '10'),
('Product 2', '20.00', 'This is a product', 'images/product2.jpg', '10'), ('Product 3', '30.00', 'This is a product', 'images/product3.jpg', '10')
                     ;