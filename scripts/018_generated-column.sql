DROP TABLE IF EXISTS  users;
DROP TABLE IF EXISTS  employers;
DROP TABLE IF EXISTS  conversations;


CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(400) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
    yearly_salary INT CHECK ( yearly_salary > 0 ),
    current_status ENUM('self-employed', 'employed', 'unemployed') NOT NULL
);

CREATE TABLE IF NOT EXISTS employers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK ( yearly_revenue > 0 ),
    is_hiring BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS conversations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    employer_id INT NOT NULL,
    message TEXT NOT NULL
#     FOREIGN KEY (user_id) REFERENCES users(id),
#     FOREIGN KEY (employer_id) REFERENCES employers(id)
);

INSERT INTO users (first_name, last_name, yearly_salary, current_status) VALUES
    ('Max', 'Schwart', 19000, 'self-employed'),
    ('Linux', 'Tvorlds', 35000, 'employed'),
    ('Richard', 'Kinsman', null, 'unemployed');

