SELECT DISTINCT
  t.name AS teacher,
  c.name AS cohort
FROM
  assistance_requests a_r
  JOIN teachers t ON a_r.teacher_id = t.id
  JOIN students s ON a_r.student_id = s.id
  JOIN cohorts c ON s.cohort_id = c.id
WHERE
  c.name = 'JUL02'
ORDER BY
  teacher;

