--return rows where total assignments is greater than or equal to 10.
SELECT day, COUNT(assignments.*) AS total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(assignments.*) >= 10
ORDER BY day;

--The HAVING clause works on aggregated data, is evaluated before the SELECT so we can't use the alias 