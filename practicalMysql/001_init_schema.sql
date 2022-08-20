CREATE DATABASE IF NOT EXISTS mysql_practice_db;

USE mysql_practice_db;

CREATE TABLE IF NOT EXISTS regions (
    region_id INT PRIMARY KEY NOT NULL,
    region_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS country (
    country_id CHAR(2) PRIMARY KEY NOT NULL,
    country_name VARCHAR(255) NOT NULL,
    region_id INT,
    CONSTRAINT fk_region_country FOREIGN KEY(region_id) REFERENCES regions(region_id)
);

CREATE TABLE IF NOT EXISTS locations (
    location_id INT PRIMARY KEY NOT NULL,
    street_address VARCHAR(100),
    postal_code VARCHAR(50),
    city VARCHAR(60),
    state_province VARCHAR(100),
    country_id CHAR(2),
    CONSTRAINT fk_country_locations FOREIGN KEY(country_id) REFERENCES country(country_id)
);

CREATE TABLE IF NOT EXISTS departments (
    dep_id INT PRIMARY KEY NOT NULL,
    dep_name VARCHAR(100) NOT NULL,
    manager_id INT,
    location_id INT,
    CONSTRAINT fk_locations_departments FOREIGN KEY(location_id) REFERENCES locations(location_id)
);

CREATE TABLE IF NOT EXISTS jobs (
    job_id VARCHAR(20) NOT NULL PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL,
    min_salary INT,
    max_salary INT
);

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(12) NOT NULL,
    hire_date DATE NOT NULL,
    job_id VARCHAR(20),
    dep_id INT,
    CONSTRAINT fk_departments_employees FOREIGN KEY(dep_id) REFERENCES departments(dep_id)
);

ALTER TABLE employees
ADD salary DECIMAL(8, 2) AFTER job_id;

ALTER TABLE employees
ADD manager_id INT AFTER salary;