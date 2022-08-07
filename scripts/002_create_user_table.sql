CREATE TABLE IF NOT EXISTS users (
  full_name VARCHAR(255),
  yearly_salary INT,
  current_status ENUM('EMPLOYED', 'SELF-EMPLOYED','UNEMPLOYED')
);