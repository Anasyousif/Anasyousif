SELECT 
    emp_no,
    first_name,
    last_name,
    CASE
        WHEN gender = 'M' THEN 'Male'
        ELSE 'Female'
    END AS gender
FROM
    employees;
    
    SELECT 
    emp_no,
    first_name,
    last_name,
    CASE gender
        WHEN 'M' THEN 'Male'
        ELSE 'Female'
    END AS gender
FROM
    employees;
    
    
    
    SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN dm.emp_no IS NOT NULL THEN 'Manager'
        ELSE 'Employee'
    END AS is_manger
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON dm.emp_no = e.emp_no
WHERE
    e.emp_no > 109990;
    
    SELECT 
    dm.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_diffeence,
    CASE
        WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'salary was raised more than 30,000'
        WHEN MAX(s.salary) - MIN(s.salary) BETWEEN 20000 AND 30000 THEN 'salary was raised more than 30,000'
        ELSE 'salary was raised by less than 20,000'
    END AS salary_increase
FROM
    dept_mamanger dm
        JOIN
    employees e ON e.emp_no = dm.emp_no
        JOIN
    salaries s ON s.emp_no = dm.emp_no
GROUP BY s.emp_no;
    
    