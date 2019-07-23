SELECT
  a.id AS id,
  a.name AS name,
  a.day AS day,
  a.chapter AS chapter,
  count(a_r.*) AS total_requests
FROM
  assistance_requests a_r
  JOIN assignments a ON a_r.assignment_id = a.id
GROUP BY
  a.id,
  a.name,
  a.day,
  a.chapter
ORDER BY
  total_requests DESC;

