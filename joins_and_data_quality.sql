USE company_db;

# View employee and department tables
SELECT * FROM employees;
SELECT * FROM department;

# INNER JOIN
SELECT e.name, d.dept_name
FROM employees e
INNER JOIN department d
ON e.dept_id = d.dept_id;

# LEFT JOIN
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN department d
ON e.dept_id = d.dept_id;

#RIGHT JOIN
SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;

# FULL OUTER JOIN using UNION
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN department d
ON e.dept_id = d.dept_id

UNION

SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;

#CROSS JOIN
SELECT e.name, d.dept_name
FROM employees e
CROSS JOIN department d;

#Find employees with missing or invalid departments
SELECT e.emp_id, e.name, e.dept_id
FROM employees e
LEFT JOIN department d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;