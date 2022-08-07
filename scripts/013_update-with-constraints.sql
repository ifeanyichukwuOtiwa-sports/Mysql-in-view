ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
    MODIFY COLUMN current_status ENUM('employed', 'unemployed', 'self-employed') NOT NULL;