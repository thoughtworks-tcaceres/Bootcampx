const {Pool} = require('pg');

const pool = new Pool({
  user: 'tylercaceres',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
const values = [`%${cohortName}%`, limit];

const queryString = `
SELECT s.id as id, s.name as name, c.name as cohort
FROM students s
JOIN cohorts c on c.id = s.cohort_id
WHERE c.name LIKE $1
LIMIT $2;
`;

pool
  .query(queryString, values)
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    });
  })
  .catch((err) => console.error('query error', err.stack));
