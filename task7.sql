USE intern_training_db;

-- Parent table
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Child table with foreign key
CREATE TABLE employees_fk (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    CONSTRAINT fk_dept
        FOREIGN KEY (dept_id)
        REFERENCES departments(dept_id)
        ON DELETE CASCADE
);

-- Insert departments
INSERT INTO departments (dept_name) VALUES
('IT'),
('HR'),
('Finance');

-- Insert employees
INSERT INTO employees_fk (emp_name, salary, dept_id) VALUES
('Akbar', 30000, 1),
('Rahul', 28000, 2),
('Priya', 40000, 1),
('Sneha', 25000, 3);

-- Invalid insert (foreign key test)
-- INSERT INTO employees_fk VALUES (NULL, 'Invalid', 20000, 99);

-- Cascade delete test
DELETE FROM departments WHERE dept_id = 1;