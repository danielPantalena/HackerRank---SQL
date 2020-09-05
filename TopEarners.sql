/*
 Enter your query here.
 */
SELECT
  (salary * months) AS earnings,
  count(*)
FROM
  Employee
GROUP BY
  1
ORDER BY
  1 DESC
LIMIT
  1;
