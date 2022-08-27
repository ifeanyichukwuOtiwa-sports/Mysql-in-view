USE company;


CREATE TABLE company_buildings
(
    id            INT PRIMARY KEY AUTO_INCREMENT,
    building_name VARCHAR(300) NOT NULL
);


CREATE TABLE teams
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    team_name    VARCHAR(300) NOT NULL,
    buildings_id INT,
    FOREIGN KEY (buildings_id) REFERENCES company_buildings (id) ON DELETE SET NULL
);


CREATE TABLE employees
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300)        NOT NULL,
    last_name  VARCHAR(300)        NOT NULL,
    birth_date DATE                NOT NULL,
    email      VARCHAR(200) UNIQUE NOT NULL,
    -- FOREIGN KEY (email) REFERENCES intranet_accounts(email) ON DELETE SET NULL
    team_id INT DEFAULT 1,
    FOREIGN KEY (team_id) REFERENCES teams (id)
);

CREATE TABLE intranet_accounts
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    email    VARCHAR(200) NOT NULL,
    password VARCHAR(200) NOT NULL,
    FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE

);
