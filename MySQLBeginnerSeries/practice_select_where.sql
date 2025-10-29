-- Project Task on SELECT & WHERE Clause:
# You’re analyzing employee data to spot salary trends, birth year patterns, 
# and naming structures across departments. 
# Your goal is to use **filtering and pattern-matching techniques** to answer 
# specific questions about the workforce. 
# Start by identifying employees who earn less than or equal to ₦50,000, 
# then move on to finding younger employees born after a given date. 
# Next, test logical operators like **AND**, **OR**, and **NOT** to combine 
# conditions and filter data more precisely. 
# Finally, use the **LIKE** operator to explore name patterns 
# (e.g., names containing “er,” names starting with “A,” or those with a specific number of letters) 
# and identify employees born in a particular year.

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_salary
WHERE salary > 50000 OR salary < 100000;

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'An_';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Je___';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '199%';