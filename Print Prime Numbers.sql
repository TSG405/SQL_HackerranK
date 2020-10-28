'''
Problem Statement: https://www.hackerrank.com/challenges/print-prime-numbers/problem
@Coded by TSG, 2020
'''

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
WITH THOUSAND AS
  (SELECT *
   FROM
     (SELECT LEVEL LVL
      FROM DUAL CONNECT BY LEVEL <= 1000)
   WHERE LVL > 1)
SELECT LISTAGG(T1.LVL, '&') WITHIN GROUP(ORDER BY T1.LVL)
FROM THOUSAND T1
WHERE T1.LVL <=
    (SELECT COUNT(DISTINCT T2.LVL) + 2
     FROM THOUSAND T2
     WHERE T2.LVL < T1.LVL
       AND MOD(T1.LVL, T2.LVL) > 0);
