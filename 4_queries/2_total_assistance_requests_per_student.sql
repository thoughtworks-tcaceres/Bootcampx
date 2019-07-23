SELECT
  count(a_r.*) AS total_assistances,
  s.name AS name
FROM
  students s
  JOIN assistance_requests a_r ON s.id = a_r.student_id
WHERE
  s.name = 'Elliot Dickinson'
GROUP BY
  s.name;

