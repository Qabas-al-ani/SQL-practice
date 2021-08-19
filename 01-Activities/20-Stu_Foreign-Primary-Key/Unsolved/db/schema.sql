-- Write your Schema Here -- 
DROP DATABASE IF EXISTS customer_db;

CREATE DATABASE customer_db;

use customer_db;

CREATE TABLE customer (
    id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL
);

CREATE TABLE customer_order (
    id INT NOT NULL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_details TEXT,
    FOREIGN KEY (customer_id) 
    REFERENCES customers(id)
    ON DELETE SET NULL
);
