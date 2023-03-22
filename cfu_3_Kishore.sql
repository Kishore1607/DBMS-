USE exercise_hr;

SELECT e.employee_id AS 'Employee ID',
CONCAT(e.first_name, e.last_name) AS 'Employee name', 
d.department_name
FROM employees AS e INNER JOIN departments AS d
ON e.department_id = d.department_id;

SELECT j.job_title, e.employee_id, DATEDIFF(a.end_date, a.start_date) AS days 
FROM employees AS e 
INNER JOIN jobs AS j ON e.job_id = j.job_id
INNER JOIN job_history AS a ON a.employee_id = e.employee_id
WHERE e.department_id = 90;


SELECT department_name, city, first_name 
FROM employees AS e 
INNER JOIN departments AS j ON e.department_id = j.department_id
INNER JOIN locations AS a ON a.location_id = j.location_id;

SELECT department_name, AVG(salary) AS Average_salary
FROM employees INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_name;