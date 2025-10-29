# Project Task on GROUP BY & ORDER BY: 
# You’ve been tasked with analyzing your organization’s HR data to uncover key patterns in employee demographics 
# and salary structures. Start by reviewing all employee details to understand the data layout. 
# Then, use GROUP BY to segment employees based on gender and calculate summary statistics — like the average, 
# maximum, minimum, and count of ages — to understand gender-based age distribution.
# Next, experiment with grouping by both occupation and salary in the salary table to see how multiple grouping fields affect your results.
# Finally, practice using ORDER BY to organize data by gender, age, and different column positions to understand 
# how sorting order and priority influence your final dataset — and why sorting by column positions rather than names can cause problems later on.

-- My Thought Process:
-- Pseudo Query --
# I asssume there are two tables: employee_demographics & employee_salaries
# Select every column in the employee_demographics table to review details
# GROUP BY the gender and return the average age, max age, min age, and count of the ages
# GROUP BY occupation and salary FROM the salary table
# SORT data by gender, age, and different column positions

SELECT *
FROM employee_demographics
ORDER BY 4 DESC, 3 DESC
;

SELECT gender, age, first_name
FROM employee_demographics
GROUP BY gender, age
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;