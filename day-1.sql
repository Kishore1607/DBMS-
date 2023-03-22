/*
capital letter : key words,
small letter : non key words
SQL is case-insensitive,
ASC for accending order,
DESC for descending order,
% = all number of character
_ = single character
REGEXP 'content'
*/

-- USE exercise_hr;

-- SHOW TABLES;

-- USE store;
-- SELECT *
-- FROM customers
-- ORDER BY first_name ASC;

-- SELECT *
-- FROM customers
-- ORDER BY last_name DESC;

-- SELECT *
-- ORDER BY customer_id DESC, state DESC;

-- SELECT 1+2;
-- SELECT 100-50/5 AS value;

-- USE store;

-- SELECT *
-- FROM customers;

-- SELECT first_name, last_name, points
-- FROM customers;

/* 
SELECT <column_1>, <column_2> <column_n>
FROM <table_name>;

SELECT * --FOR all columns.
FROM <table_name>;
*/

-- SELECT first_name, last_name, points, points * 1.1 AS 'discount_factor'
-- FROM customers;

-- SELECT birth_date
-- FROM customers;

-- SELECT 171*214+625;

-- USE exercise_hr;
-- SHOW TABLES;
--  SELECT first_name"FIRST_NAME", last_name"LAST_NAME"
--  FROM employees;


-- USE store ;
-- USE exercise_hr;
-- SELECT *
-- FROM customers

-- WHERE state = 'FL';

-- USE store ;
-- SELECT *
-- FROM customers
-- WHERE points > 3000;

-- USE store ;
-- SELECT *
-- FROM customers

-- WHERE points > '3000';

-- USE store ;
-- SELECT *
-- FROM customers

-- WHERE birth_date >= '1990-01-01';

-- USE store ;
-- SELECT *
-- FROM customers

-- WHERE state != 'FL';

-- USE store ;
-- SELECT *
-- FROM customers

--  WHERE state = 'FL' AND birth_date = '1990-01-01';
--  
--  USE store ;
-- SELECT *
-- FROM customers

-- WHERE points > '3000' AND birth_date >= '1990-01-01'; 

-- USE store ;
-- SELECT *
-- FROM customers

-- WHERE points > '3000' OR birth_date >= '1990-01-01';

-- USE store ;
-- SELECT *
-- FROM customers

-- WHERE birth_date >= '1989-01-01' OR  points < '4000' AND state = 'VA';

-- SELECT *
-- FROM customers
-- WHERE points < '4000' OR birth_date >+ '1990-01-01' AND state = 'VA';

-- SELECT *
-- FROM customers
--  WHERE state = 'FL' OR state = 'VA' OR state = 'GA';

-- SELECT *
-- FROM customers
-- WHERE state IN ('FL', 'VA', 'GA');

-- SELECT *
-- FROM customers
-- WHERE points >=3000 AND points <= 10000;

-- -- USE inventory ;
-- -- SELECT *
-- -- FROM products

-- -- WHERE quantity_in_stock IN (49, 38, 72);

-- SELECT *
-- FROM customers
-- WHERE points BETWEEN 3000 AND 10000;

-- SELECT *
-- FROM customers
-- WHERE birth_date NOT BETWEEN '1990-01-01' AND '2000-01-01';

-- SELECT *
-- FROM customers
-- WHERE birth_date NOT BETWEEN '1990-01-01' AND '2000-01-01';

-- SELECT *
-- FROM customers
-- WHERE first_name LIKE 'b%';

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE '_y';

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE '_____y';

-- SELECT *
-- FROM customers
-- WHERE state LIKE '_A';

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE 'b____y';

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE 'b%y';

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP 'Mac';

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP 'field$';

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP 'field$|^Mac';

-- SELECT *
-- FROM customers
-- WHERE first_name IN ('ELKA', 'AMBUR');

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE '%EY' OR last_name LIKE '%ON';

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE 'MY%' OR last_name LIKE '%SE%';customers

-- /*
-- ^ (caret) - strats with
-- $ - ends with
-- | (pipe) - logical OR
-- [.] 
-- .* - percentage in regex
-- WHERE MOD(ID,2)=0;TO GET EVEN NUMBER
-- GROUP BY to group the value in column
-- */

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP 'ae|be|ce|de|ee|fe|ge|he';

-- /*  or  */

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP '[abcdefgh]e';

-- /*  or  */

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP '[a-h]e';

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP '[gim]e';

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP '^[a-z]{6}$';

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP '[a-z]6';

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP '[a-z]6';

-- SELECT *
-- FROM employees
-- WHERE last_name REGEXP 'b.*[ru]';

use store;

-- SELECT *
-- FROM customers
-- -- WHERE phone = NULL;(NULL = NULL) is not correct for NULL
-- WHERE phone IS NULL;

-- -- Get top 3 customers
-- SELECT *
-- FROM customers
-- LIMIT 3;

-- -- Get top 3 loyal customers(points)
-- SELECT *
-- FROM customers
-- ORDER BY points DESC
-- LIMIT 3;

-- first value is for skip row,next value show row.
-- the order of the clausds matter.select
-- EXPLAIN
-- SELECT *
-- FROM customers
-- LIMIT 3,3;

-- USE exercise_hr;
-- -- EXPLAIN

-- SELECT *
-- FROM employees
-- WHERE first_name = "Lex";

-- select department_id
-- from departments
-- WHERE department_name =  'IT';

-- select employee_id, first_name, department_id
-- from employees
-- where DEPARTMENT_ID = 60;

-- SELECT*
-- FROM employees AS e INNER JOIN departments AS d
-- ON e.department_id = d.department_id;

-- SELECT FIRST_NAME, LAST_NAME, e.department_id, department_name
-- FROM employees AS e INNER JOIN departments AS d
-- ON e.department_id = d.department_id;

-- SELECT department_id, COUNT(*)
-- FROM employees
-- GROUP BY department_id;

-- SELECT department_id, COUNT(*) AS 'number of employees'
-- FROM employees
-- GROUP BY department_id;

-- SELECT *
-- FROM employees AS e INNER JOIN employees AS m
-- ON e.manager_id = m.employee_id;

-- SELECT e.employee_id AS 'Employee ID',
-- CONCAT(e.first_name, e.last_name) AS 'Employee name', 
-- m.employee_id AS 'Manager ID',
-- CONCAT(m.first_name, m.last_name) AS 'Manager name'
-- FROM employees AS e INNER JOIN employees AS m
-- ON e.manager_id = m.employee_id;

-- USE exercise_hr;

-- SELECT e.employee_id AS 'Employee ID',
-- CONCAT(e.first_name, e.last_name) AS 'Employee name', 
-- d.department_name
-- FROM employees AS e INNER JOIN departments AS d
-- ON e.department_id = d.department_id;

-- SELECT j.job_title, e.employee_id, DATEDIFF(a.end_date, a.start_date) AS days 
-- FROM employees AS e 
-- INNER JOIN jobs AS j ON e.job_id = j.job_id
-- INNER JOIN job_history AS a ON a.employee_id = e.employee_id
-- WHERE e.department_id = 90;


-- SELECT department_name, city, first_name 
-- FROM employees AS e 
-- INNER JOIN departments AS j ON e.department_id = j.department_id
-- INNER JOIN locations AS a ON a.location_id = j.location_id;

-- SELECT department_name, AVG(salary) AS Average_salary
-- FROM employees INNER JOIN departments
-- ON employees.department_id = departments.department_id
-- GROUP BY department_name;

USE exercise_hr;
EXPLAIN


