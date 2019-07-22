SELECT s.name AS "student_name", s.start_date AS "student_start_date", c.name AS "cohort_name", c.start_date AS "cohort_start_date"
FROM students s JOIN cohorts c ON s.cohort_id = c.id
WHERE s.start_date != c.start_date;