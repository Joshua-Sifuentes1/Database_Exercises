USE employees;

-- Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
-- Now add a condition to find everybody with those names who is also male — 441 rows.

SELECT * 
FROM employees
WHERE gender = 'M'
AND (first_name = 'Irena'
	OR (
		first_name = 'Vidya'
		OR first_name = 'Maya'
	)
);

-- Employees whose last name starts with 'E' — 7,330 rows.

SELECT * 
FROM employees
WHERE last_name LIKE 'E%';

-- =========================================
-- Employees hired in the 90s — 135,214 rows.
SELECT * 
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
-- instructor example
SELECT * 
FROM employees
WHERE hire_date LIKE '199%';
-- =========================================

-- Employees born on Christmas — 842 rows.

SELECT * 
FROM employees
WHERE birth_date LIKE '%12-25';

-- Employees with a 'q' in their last name — 1,873 rows.

SELECT * 
FROM employees
WHERE last_name LIKE '%q%';
