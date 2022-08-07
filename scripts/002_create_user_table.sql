CREATE TABLE IF NOT EXISTS users (
  full_name VARCHAR(200),
  yearly_salary INT,
  current_status ENUM('EMPLOYED', 'SELF-EMPLOYED','UNEMPLOYED')
);