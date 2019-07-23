SELECT
  c.name AS name,
  avg(a_r.completed_at - a_r.started_at) AS average_assistance_time
FROM
  assistance_requests a_r
  JOIN students s ON s.id = a_r.student_id
  JOIN cohorts c ON c.id = s.cohort_id
WHERE
  a_r.completed_at IS NOT NULL
GROUP BY
  c.name
ORDER BY
  average_assistance_time;

