SET
  @r1 = 0,
  @r2 = 0,
  @r3 = 0,
  @r4 = 0;

SELECT
  MIN(Doctor),
  MIN(Professor),
  MIN(Singer),
  MIN(Actor)
FROM
  (
    SELECT
      CASE
        Occupation
        WHEN 'Doctor' THEN @r1 := @r1 + 1
        WHEN 'Professor' THEN @r2 := @r2 + 1
        WHEN 'Singer' THEN @r3 := @r3 + 1
        WHEN 'Actor' THEN @r4 := @r4 + 1
      END AS RowLine,
      IF (Occupation = 'Doctor', Name, NULL) AS Doctor,
      IF (Occupation = 'Professor', Name, NULL) AS Professor,
      IF (Occupation = 'Singer', Name, NULL) AS Singer,
      IF (Occupation = 'Actor', Name, NULL) AS Actor
    FROM
      OCCUPATIONS
    ORDER BY
      Name
  ) AS t
GROUP BY
  RowLine;
