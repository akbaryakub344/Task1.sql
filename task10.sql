USE intern_training_db;

-- Base join query
SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees_fk e
JOIN departments d
ON e.dept_id = d.dept_id;

-- Create view
CREATE VIEW employee_department_view AS
SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees_fk e
JOIN departments d
ON e.dept_id = d.dept_id;

-- Query from view
SELECT * FROM employee_department_view;

-- Filtered view query
SELECT *
FROM employee_department_view
WHERE dept_name = 'IT';

-- Sorted view query
SELECT *
FROM employee_department_view
ORDER BY salary DESC;

-- Drop view
DROP VIEW employee_department_view;