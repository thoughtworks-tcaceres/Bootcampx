SELECT
  sum(a.duration) AS total_duration
FROM
  assignment_submissions a
  JOIN students s ON a.student_id = s.id
WHERE
  s.name = 'Ibrahim Schimmel';

SELECT
  students.name AS student,
  count(assignment_submissions.*) AS total_submissions
FROM
  assignment_submissionsJOIN students ON students.id = student_id
WHERE
  students.end_date IS NULL
GROUP BY
  students.name
HAVING
  COUNT(assignment_submissions.*) < 100;

