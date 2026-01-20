USE intern_training_db;

-- Sort ascending
SELECT * FROM employees ORDER BY salary;

-- Sort descending
SELECT * FROM employees ORDER BY salary DESC;

-- Sort by multiple columns
SELECT * FROM employees ORDER BY department ASC, salary DESC;

-- Limit results
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

-- Order with WHERE
SELECT * FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

-- Pagination using OFFSET
SELECT * FROM employees ORDER BY emp_id LIMIT 2 OFFSET 0;
SELECT * FROM employees ORDER BY emp_id LIMIT 2 OFFSET 2;

-- Leaderboard query
SELECT name, department, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;
