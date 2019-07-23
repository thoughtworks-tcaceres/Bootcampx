SELECT
  t.name teacher,
  s.name student,
  a.name AS assignment,
  a_r.completed_at - a_r.started_at AS duration
FROM
  assistance_requests a_r
  JOIN teachers t ON a_r.teacher_id = t.id
  JOIN students s ON a_r.student_id = s.id
  JOIN assignments a ON a_r.assignment_id = a.id
ORDER BY
  duration;

