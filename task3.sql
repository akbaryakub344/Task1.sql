USE intern_training_db;

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (name, email, age, department, salary) VALUES
('Akbar', 'akbar@gmail.com', 22, 'IT', 25000),
('Rahul', 'rahul@gmail.com', 25, 'HR', 30000),
('Priya', 'priya@gmail.com', 28, 'IT', 40000),
('Sneha', 'sneha@gmail.com', 24, 'Finance', 28000),
('Amit', NULL, 30, 'HR', 35000);

SELECT * FROM employees WHERE age > 24;
SELECT * FROM employees WHERE department = 'IT' AND salary > 30000;
SELECT * FROM employees WHERE department = 'HR' OR department = 'Finance';
SELECT * FROM employees WHERE name LIKE 'A%';
SELECT * FROM employees WHERE department IN ('IT', 'HR');
SELECT * FROM employees WHERE salary BETWEEN 25000 AND 35000;
SELECT * FROM employees WHERE email IS NULL;
