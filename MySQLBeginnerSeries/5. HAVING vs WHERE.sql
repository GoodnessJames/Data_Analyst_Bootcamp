-- Having vs Where

SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender # Throws an error, grouping is done before filtering
				# Cant change the order either GROUP BY has to come before WHERE
                # Fix: Remove the WHERE clause. Use this instead after the GROUP BY clause - HAVING AVG(age) > 40
;

-- Fix
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager' # Filter at the row level
GROUP BY occupation
HAVING AVG(salary) > 75000 # Filter at the aggregate function level; WHERE wouldn't work here
						   # HAVING clause works for aggregated function level filtering
;