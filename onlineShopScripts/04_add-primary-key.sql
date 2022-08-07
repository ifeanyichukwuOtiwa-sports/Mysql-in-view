ALTER TABLE products DROP id;

INSERT INTO products (product_name, price, description, image, amount_in_stock)
VALUES ('Pixel', '10', 'Description2', 'image1.jpg', 10);

ALTER TABLE products
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;

