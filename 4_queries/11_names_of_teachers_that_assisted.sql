/* Get the name of all teachers that performed an assistance request 
during a cohort JUL02. Select the instructor's name and the cohort's name.
Don't repeat the instructor's name.Order by the instructor's name.*/

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;

--alternatives
-- SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
-- FROM assistance_requests 
-- JOIN teachers ON teachers.id = assistance_requests.teacher_id
-- JOIN students ON assistance_requests.student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teacher;

-- SELECT teachers.name as teacher, cohorts.name as cohort
-- FROM assistance_requests 
-- JOIN teachers ON teachers.id = assistance_requests.teacher_id
-- JOIN students ON assistance_requests.student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY teachers.name, cohorts.name
-- ORDER BY teacher;





