USE intern_training_db;

-- Subquery in WHERE (salary > average)
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Subquery in FROM
SELECT dept, avg_salary
FROM (
    SELECT department AS dept, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) AS dept_avg;

-- Subquery in SELECT
SELECT 
    emp_name,
    salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

-- Correlated subquery
SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);

-- Subquery using IN
SELECT *
FROM employees
WHERE department IN (
    SELECT dept_name
    FROM departments
);