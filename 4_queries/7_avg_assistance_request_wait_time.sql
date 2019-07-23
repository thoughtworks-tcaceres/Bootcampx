SELECT
  avg(a_r.started_at - a_r.created_at) AS average_wait_time
FROM
  assistance_requests a_r;

