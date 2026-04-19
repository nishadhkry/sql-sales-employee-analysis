USE company_db;

#View salary table
SELECT * FROM emp;

#ROW_NUMBER(): unique number within each department
SELECT emp_name, department, salary,
       ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num
FROM emp;

#RANK(): same rank for same values, gaps may appear
SELECT emp_name, salary,
       RANK() OVER (ORDER BY salary DESC) AS rank_val
FROM emp;

#DENSE_RANK(): same rank for same values, no gaps
SELECT emp_name, salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_val
FROM emp;