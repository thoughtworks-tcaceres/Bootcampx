SELECT s.name AS student, avg(ass.duration) AS average_assignment_duration
FROM students s JOIN assignment_submissions ass ON ass.student_id = s.id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_assignment_duration DESC;