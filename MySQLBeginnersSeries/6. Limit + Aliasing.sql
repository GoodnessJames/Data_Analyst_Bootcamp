-- Limit + Aliasing

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

-- Aliasing
SELECT gender, AVG(age) AS avg_age # The AS keyword is optional, query can run without it
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40	# Aliasing comes in handy here. avg_age can used instead of always typing AVG(age)
						# Better syntax: HAVING avg_age > 40
;
