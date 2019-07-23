SELECT
  avg(a_r.completed_at - a_r.started_at) AS average_assistance_request_duration
FROM
  assistance_requests a_r
WHERE
  a_r.completed_at IS NOT NULL;

