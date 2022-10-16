-- //In the employee.sql file, write out the code for the following problems:

-- 1. List all employee first and last names only that live in Calgary.
SELECT last_name, first_name
FROM employee
WHERE city = 'Calgary'

-- 2. Find the birthdate for the youngest employee.
SELECT MAX(birth_date)
FROM employee

-- 3. Find the birthdate for the oldest employee.
SELECT MIN(birth_date)
FROM employee

-- 4. Find everyone that reports to Nancy Edwards (use the ReportsTo column).
SELECT *
FROM employee
WHERE reports_to = 2;

-- 5. You will need to query the employee table to find the id for Nancy Edwards
SELECT employee_id
FROM employee
WHERE first_name = 'Nancy';

-- 6. Count how many people live in Lethbridge.
SELECT last_name, first_name
FROM employee
WHERE city = 'Lethbridge';

