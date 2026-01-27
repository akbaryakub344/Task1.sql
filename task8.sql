USE intern_training_db;

-- INNER JOIN
SELECT e.emp_name, e.salary, d.dept_name
FROM employees_fk e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- LEFT JOIN
SELECT e.emp_name, e.salary, d.dept_name
FROM employees_fk e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- RIGHT JOIN
SELECT e.emp_name, e.salary, d.dept_name
FROM employees_fk e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- FULL JOIN (simulated using UNION)
SELECT e.emp_name, e.salary, d.dept_name
FROM employees_fk e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
UNION
SELECT e.emp_name, e.salary, d.dept_name
FROM employees_fk e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- Business readable output
SELECT 
    d.dept_name AS Department,
    e.emp_name AS Employee,
    e.salary AS Salary
FROM departments d
LEFT JOIN employees_fk e
ON d.dept_id = e.dept_id;