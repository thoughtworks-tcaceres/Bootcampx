SELECT
  c.name AS cohort,
  count(a.*) AS total_submissions
FROM
  students s
  JOIN assignment_submissions a ON s.id = a.student_id
  JOIN cohorts c ON c.id = s.cohort_id
GROUP BY
  c.name
ORDER BY
  total_submissions DESC;

