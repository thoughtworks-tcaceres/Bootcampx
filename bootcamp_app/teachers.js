const {Pool} = require('pg');

const pool = new Pool({
  user: 'tylercaceres',
  host: 'localhost',
  database: 'bootcampx'
});

pool
  .query({
    text: `
  SELECT DISTINCT
    t.name AS teacher,
    c.name AS cohort
  FROM
    assistance_requests a_r
    JOIN teachers t ON a_r.teacher_id = t.id
    JOIN students s ON a_r.student_id = s.id
    JOIN cohorts c ON s.cohort_id = c.id
  WHERE
    c.name = $1
  ORDER BY
    teacher;
`,
    values: [`${process.argv[2]}`]
  })
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.cohort}: ${user.teacher}`);
    });
  })
  .catch((err) => console.error('query error', err.stack));
