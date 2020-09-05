SELECT
  s.name
FROM
  Students AS s
  INNER JOIN Friends AS f ON (f.id = s.id)
  INNER JOIN Packages AS p1 ON (p1.id = s.id)
  INNER JOIN Packages AS p2 ON (p2.id = f.friend_id)
WHERE
  p2.salary > p1.salary
ORDER BY
  p2.salary;
