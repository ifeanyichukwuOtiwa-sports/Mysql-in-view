ALTER TABLE products
MODIFY COLUMN  product_name VARCHAR(200) NOT NULL,
    MODIFY COLUMN  `description` TEXT NOT NULL,
    MODIFY COLUMN price NUMERIC(10,2) NOT NULL,
    ADD CONSTRAINT  check_positive_price CHECK (price > 0),
    MODIFY COLUMN image_path VARCHAR(300) NULL,
    MODIFY COLUMN amount_in_stock INT NULL,
    ADD CONSTRAINT check_positive_amount_in_stock CHECK (amount_in_stock > 0);