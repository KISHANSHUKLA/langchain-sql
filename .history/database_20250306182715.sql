CREATE DATABASE my_database;
USE my_database;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    designation VARCHAR(100),
    salary DECIMAL(10,2),
    signup_date DATE
);

INSERT INTO users (name, email, city, state, country, designation, salary, signup_date) VALUES
('Alice Johnson', 'alice@example.com', 'New York', 'NY', 'USA', 'Software Engineer', 75000.00, '2024-03-01'),
('Bob Smith', 'bob@example.com', 'Los Angeles', 'CA', 'USA', 'Project Manager', 90000.00, '2024-03-05'),
('Charlie Brown', 'charlie@example.com', 'Chicago', 'IL', 'USA', 'Data Analyst', 68000.00, '2024-03-10'),
('David Miller', 'david.miller@example.com', 'San Francisco', 'CA', 'USA', 'Software Developer', 82000.00, '2024-03-15'),
('Emma Wilson', 'emma.wilson@example.com', 'Austin', 'TX', 'USA', 'Marketing Manager', 72000.00, '2024-03-20'),
('Frank Thomas', 'frank.thomas@example.com', 'Seattle', 'WA', 'USA', 'UX Designer', 78000.00, '2024-03-25'),
('Grace Lee', 'grace.lee@example.com', 'Denver', 'CO', 'USA', 'QA Engineer', 70000.00, '2024-04-01'),
('Henry Adams', 'henry.adams@example.com', 'Boston', 'MA', 'USA', 'DevOps Engineer', 88000.00, '2024-04-05'),
('Isabella Turner', 'isabella.turner@example.com', 'Las Vegas', 'NV', 'USA', 'Product Manager', 95000.00, '2024-04-10'),
('Jack White', 'jack.white@example.com', 'Portland', 'OR', 'USA', 'Cybersecurity Analyst', 85000.00, '2024-04-15'),
('Kelly Harris', 'kelly.harris@example.com', 'Phoenix', 'AZ', 'USA', 'Database Administrator', 78000.00, '2024-04-20'),
('Liam Scott', 'liam.scott@example.com', 'Salt Lake City', 'UT', 'USA', 'Network Engineer', 83000.00, '2024-04-25'),
('Mia Carter', 'mia.carter@example.com', 'Houston', 'TX', 'USA', 'Software Architect', 98000.00, '2024-05-01'),
('Nathan Wright', 'nathan.wright@example.com', 'San Diego', 'CA', 'USA', 'Front-end Developer', 74000.00, '2024-05-05'),
('Olivia Evans', 'olivia.evans@example.com', 'Atlanta', 'GA', 'USA', 'Backend Developer', 79000.00, '2024-05-10'),
('Patrick Nelson', 'patrick.nelson@example.com', 'Philadelphia', 'PA', 'USA', 'Cloud Engineer', 87000.00, '2024-05-15'),
('Quinn Mitchell', 'quinn.mitchell@example.com', 'Dallas', 'TX', 'USA', 'Tech Lead', 96000.00, '2024-05-20'),
('Rachel Brooks', 'rachel.brooks@example.com', 'Charlotte', 'NC', 'USA', 'AI Engineer', 89000.00, '2024-05-25'),
('Samuel Foster', 'samuel.foster@example.com', 'Detroit', 'MI', 'USA', 'Data Scientist', 92000.00, '2024-06-01'),
('Tina Richardson', 'tina.richardson@example.com', 'Indianapolis', 'IN', 'USA', 'Machine Learning Engineer', 91000.00, '2024-06-05'),
('Umar Hughes', 'umar.hughes@example.com', 'Memphis', 'TN', 'USA', 'System Administrator', 78000.00, '2024-06-10'),
('Victor Bennett', 'victor.bennett@example.com', 'Columbus', 'OH', 'USA', 'Business Analyst', 72000.00, '2024-06-15'),
('Wendy Russell', 'wendy.russell@example.com', 'Louisville', 'KY', 'USA', 'Full Stack Developer', 86000.00, '2024-06-20'),
('Xander Hayes', 'xander.hayes@example.com', 'Milwaukee', 'WI', 'USA', 'Security Engineer', 83000.00, '2024-06-25'),
('Yasmine Morgan', 'yasmine.morgan@example.com', 'Baltimore', 'MD', 'USA', 'Technical Writer', 69000.00, '2024-07-01'),
('Zane Cooper', 'zane.cooper@example.com', 'Tampa', 'FL', 'USA', 'Mobile App Developer', 81000.00, '2024-07-05'),
('Zara Patel', 'zara.patel@example.com', 'Miami', 'FL', 'USA', 'HR Specialist', 65000.00, '2024-07-10');