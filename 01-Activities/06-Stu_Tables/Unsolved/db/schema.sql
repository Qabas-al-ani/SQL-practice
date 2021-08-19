DROP DATABASE IF EXISTS books_db;
-- Creates the "books_db" database --
CREATE DATABASE books_db;
USE books_db;

-- Add biography table --
CREATE TABLE biography (
    id INT not null,
    name VARCHAR(100),
);

INSERT into biography (id, name) VALUES (1, 'qabas');

select * from biography 
where i = 1;
