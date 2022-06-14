SELECT 
d.dept_name, 
ee.gender, 
dm.emp_no,
dm.from_date, 
dm.to_date, 
e.calnder_year,
CASE 
WHEN YEAR (dm.to_date) >= e.calender_year AND YEAR (dm.from_date) <= e.calender_year THEN 1 ELSE 0 
Else 0 
END AS active
FROM 
( SELECT 
YEAR(hire_date) AS calender_year
FROM 
t_dept_manager dm
GROUP BY calendar_year) e 
CROSS JOIN 
t_dept_manager dm
JOIN 
t_dept_manager dm d ON dm.dept_no = d.dept_no
JOIN 
t_employees ee ON dm.emp_no = ee.emp_no
JOIN 
t_employees ee ON dm.emp_no = ee.emp_no 
ORDER by dm.emp_no, calendar_year;  


SELECT 
* 
FROM ( SELECT 
YEAR(hire_date) AS calender_year
FROM 
t_dept_manager dm
GROUP BY calendar_year) e 
CROSS JOIN 
t_dept_manager dm
JOIN 
t_dept_manager dm d ON dm.dept_no = d.dept_no
JOIN 
t_employees ee ON dm.emp_no = ee.emp_no
JOIN 
t_employees ee ON dm.emp_no = ee.emp_no 
ORDER by dm.emp_no, calendar_year;


SELECT 
    d.dept_name,
    ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calendar_year,
    CASE
        WHEN YEAR(dm.to_date) >= e.calendar_year AND YEAR(dm.from_date) <= e.calendar_year THEN 1
        ELSE 0
    END AS active
FROM
    (SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        t_employees
    GROUP BY calendar_year) e
        CROSS JOIN
    t_dept_manager dm
        JOIN
    t_departments d ON dm.dept_no = d.dept_no
        JOIN 
    t_employees ee ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no, calendar_year;