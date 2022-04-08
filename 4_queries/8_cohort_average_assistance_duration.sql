/*Calculate the average total duration of assistance requests for 
each cohort. Use the previous query as a sub query to determine 
the duration per cohort. Return a single row average_total_duration*/

SELECT avg (total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;

--total_durations becomes a temp. table yo calc. average
--similar idea to: avg(sum(completed_at-started_at)) but we can't nest queries like that