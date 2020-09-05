/*
 Enter your query here.
 */
SELECT
  ROUND(S.LAT_N, 4)
FROM
  STATION AS S
WHERE
  (
    SELECT
      COUNT(*)
    FROM
      STATION
    WHERE
      LAT_N < S.LAT_N
  ) = (
    SELECT
      COUNT(*)
    FROM
      STATION
    WHERE
      LAT_N > S.LAT_N
  );
