SELECT
  c.name AS cohort,
  sum(a_r.completed_at - a_r.started_at) AS total_duration
FROM
  assistance_requests a_r
  JOIN students s ON a_r.student_id = s.id
  JOIN cohorts c ON s.cohort_id = c.id
GROUP BY
  c.name
ORDER BY
  total_duration;

