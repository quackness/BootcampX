const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

//a query to return a response, which is an object (res)
//(res.rows) returns the database results are being 
//represented as an array of JavaScript objects.

pool.query(`
SELECT id, name, cohort_id
FROM students
LIMIT 5;
`)
.then(res => {
  console.log(res.rows);
})
.catch(err => console.error('query error', err.stack));

pool.query(`
SELECT id, name, cohort_id
FROM students
LIMIT 5;
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_id} cohort`);
  })
});



//A query to get a list of students and a cohort name 

pool.query(`
SELECT students.id, students.name, cohorts.name AS cohort_name
FROM students
JOIN cohorts ON cohort_id = cohorts.id
LIMIT 5;
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(user.cohort_name)
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
  })
});