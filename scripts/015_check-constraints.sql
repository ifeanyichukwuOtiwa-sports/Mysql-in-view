# CREATE TABLE users (
#     full_name VARCHAR(300) NOT NULL,
#     yearly_salary INT CHECK ( yearly_salary > 0 && yearly_salary < 1000000000),
#     current_status ENUM('self-employed', 'employed', 'unemployed') NOT NULL
# );


UPDATE users SET yearly_salary = NULL WHERE yearly_salary = 0;

ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive_check CHECK ( yearly_salary > 0 );