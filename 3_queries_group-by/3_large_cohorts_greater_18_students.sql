SELECT c.name AS cohort_name, count(s.id) AS student_count
FROM cohorts c
  JOIN students s ON c.id = s.cohort_id
GROUP BY c.name
HAVING count(s.id) >= 18
ORDER BY sum(s.id);