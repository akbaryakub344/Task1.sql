USE intern_training_db;

-- Create table
CREATE TABLE employees_crud (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert data
INSERT INTO employees_crud (name, department, salary) VALUES
('Akbar', 'IT', 25000),
('Rahul', 'HR', 30000),
('Priya', 'IT', 40000),
('Sneha', 'Finance', 28000);

-- Read all data
SELECT * FROM employees_crud;

-- Read filtered data
SELECT * FROM employees_crud WHERE department = 'IT';

-- Update data
UPDATE employees_crud
SET salary = 32000
WHERE name = 'Rahul';

-- Delete safely
DELETE FROM employees_crud
WHERE department = 'Finance';

-- Transaction example
START TRANSACTION;
DELETE FROM employees_crud WHERE name = 'Akbar';
ROLLBACK;