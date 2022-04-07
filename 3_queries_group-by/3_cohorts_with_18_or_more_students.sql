/*Get all cohorts with 18 or more students.
Select the cohort name and the total students.
Order by total students from smallest to greatest.
We have to combine two tables here*/

SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count;

--alternative
-- SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
-- FROM cohorts
-- JOIN students ON cohorts.id = students.cohort_id
-- GROUP BY cohorts.name
-- HAVING count(students.*) >= 18
-- ORDER BY count(students.*);


