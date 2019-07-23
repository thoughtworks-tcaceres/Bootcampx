SELECT
  count(a_r.*) AS total_assistances,
  t.name AS name
FROM
  teachers t
  JOIN assistance_requests a_r ON t.id = a_r.teacher_id
WHERE
  t.name = 'Waylon Boehm'
GROUP BY
  t.name;

