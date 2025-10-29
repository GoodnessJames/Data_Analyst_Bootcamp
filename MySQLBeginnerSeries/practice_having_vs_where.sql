# -- Project Task on HAVING vs WHERE:
# You’re working on refining employee and salary reports for management. The goal is to understand how to filter data effectively  
# — both **before** and **after** aggregation.  
# Start by analyzing the average age of employees by gender, and notice why filtering with `WHERE`  
# on an aggregated function (like `AVG(age)`) causes an error. Then, apply the correct approach using  
# the **HAVING** clause to filter aggregated results (e.g., genders with an average age above 40).  
# Next, analyze average salaries by occupation to identify which managerial roles earn more than ₦75,000 on average.  
# While doing this, use **WHERE** to filter data at the **row level** (like selecting occupations ending with “manager”)  
# and **HAVING** to filter at the **aggregate level** based on computed averages.

SELECT occupation, AVG(salary) as avg_salary
FROM employee_salary
WHERE occupation LIKE '%manager%' 
GROUP BY occupation
HAVING AVG(salary) > 75000
;

