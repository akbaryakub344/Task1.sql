CREATE DATABASE intern_training_db;
USE intern_training_db;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    age INT
);

INSERT INTO students (name, email, age) VALUES
('Akbar Yakub', 'akbar@gmail.com', 22),
('Rahul Sharma', 'rahul@gmail.com', 23),
('Priya Singh', 'priya@gmail.com', 21),
('Sneha Reddy', 'sneha@gmail.com', 22),
('Amit Kumar', 'amit@gmail.com', 24);

SELECT * FROM students;
SELECT name, email FROM students;
