CREATE DATABASE my_database;
USE my_database;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    signup_date DATE
);

INSERT INTO users (name, email, signup_date) VALUES
('Alice Johnson', 'alice@example.com', '2024-03-01'),
('Bob Smith', 'bob@example.com', '2024-03-05'),
('Charlie Brown', 'charlie@example.com', '2024-03-10');
