CREATE DATABASE IF NOT EXISTS products_db;

USE products_db;

CREATE TABLE IF NOT EXISTS products_table (
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(255),
product_image VARCHAR(255),
product_price VARCHAR(50)
);
