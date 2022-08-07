ALTER TABLE products DROP id;

INSERT INTO products (product_name, price, description, image, amount_in_stock)
VALUES ('Acer', '15.89', 'Description3', 'image-acer.jpg', 15);

ALTER TABLE products
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT FIRST;

