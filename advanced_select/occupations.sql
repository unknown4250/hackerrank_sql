SET @d=0, @p=0, @s=0, @a=0;

SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM (
    SELECT
        CASE
             WHEN OCCUPATION='Doctor' THEN (@d:=@d+1)
             WHEN OCCUPATION='Professor' THEN (@p:=@p+1)
             WHEN OCCUPATION='Singer' THEN (@s:=@s+1)
             WHEN OCCUPATION='Actor' THEN (@a:=@a+1)
        END AS ROWNUMBER,
        CASE WHEN OCCUPATION='Doctor' THEN NAME END AS Doctor,
        CASE WHEN OCCUPATION='Professor' THEN NAME END AS Professor,
        CASE WHEN OCCUPATION='Singer' THEN NAME END AS Singer,
        CASE WHEN OCCUPATION='Actor' THEN NAME END AS Actor
    FROM OCCUPATIONS
    ORDER BY NAME
    ) SUB
GROUP BY ROWNUMBER;
