const { Pool } = require('pg');
var myArgs = process.argv.slice(2);

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT cohorts.name as cohort, teachers.name as names
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = $1;
`, [myArgs[0]])
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.names}`);
  })
}).catch(err => console.error('query error', err.stack));