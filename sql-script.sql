SET GLOBAL explicit_defaults_for_timestamp = 1;

CREATE DATABASE IF NOT EXISTS products_db;

USE products_db;

CREATE TABLE IF NOT EXISTS products_table (
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(255),
product_image VARCHAR(255),
product_price FLOAT(12,3) NOT NULL);
