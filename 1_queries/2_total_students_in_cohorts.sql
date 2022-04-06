--Select the total number of students who were in the first 3 cohorts.
SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);


/*alternative
SELECT count(name)
FROM students
WHERE cohort_id BETWEEN 1 AND 3;*/
