INSERT INTO users (full_name, yearly_salary, current_status)
VALUES ('John Doe', 1000000, 'EMPLOYED');
# ON DUPLICATE KEY
# UPDATE yearly_salary = VALUES(yearly_salary), current_status = VALUES(current_status);

INSERT INTO users VALUES ('Maximus', 0, 'UNEMPLOYED');

INSERT INTO users VALUES ('Clement', 190000, 'EMPLOYED');

INSERT INTO users (full_name, yearly_salary, current_status)
VALUES ('Maxwell', '1500000', 'SELF-EMPLOYED');