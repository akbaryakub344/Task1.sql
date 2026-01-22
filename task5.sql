USE intern_training_db;

-- Total employees
SELECT COUNT(*) AS total_employees FROM employees;

-- Department wise employee count
SELECT department, COUNT(*) AS emp_count
FROM employees
GROUP BY department;

-- Total salary per department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Min and Max salary
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees;

-- Group by with HAVING
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 30000;

-- WHERE vs HAVING example
SELECT department, COUNT(*) AS emp_count
FROM employees
WHERE salary > 25000
GROUP BY department
HAVING COUNT(*) >= 1;

-- Handling NULL values
SELECT COUNT(email) AS emails_present
FROM employees;
