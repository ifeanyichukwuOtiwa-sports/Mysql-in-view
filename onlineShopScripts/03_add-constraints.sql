ALTER TABLE products
MODIFY COLUMN  product_name VARCHAR(200) NOT NULL,
    MODIFY COLUMN  `description` TEXT NOT NULL,
    ADD CONSTRAINT  check_positive_price CHECK (price > 0),
    MODIFY COLUMN image VARCHAR(300) NOT NULL,
    MODIFY COLUMN amount_in_stock INT NOT NULL;