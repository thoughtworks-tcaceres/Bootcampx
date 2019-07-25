const {Pool} = require('pg');

const pool = new Pool({
  user: 'tylercaceres',
  host: 'localhost',
  database: 'bootcampx'
});

pool
  .query(
    `
SELECT s.id as id, s.name as name, c.name as cohort
FROM students s
JOIN cohorts c on c.id = s.cohort_id
WHERE c.name LIKE '%${process.argv[2]}%'
LIMIT ${process.argv[3] || 5};
`
  )
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    });
  })
  .catch((err) => console.error('query error', err.stack));
