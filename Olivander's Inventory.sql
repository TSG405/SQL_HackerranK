'''
Problem Statement: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
@Coded by TSG, 2020
'''

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT WANDS.ID,
       MIN_PRICES.AGE,
       WANDS.COINS_NEEDED,
       WANDS.POWER
FROM WANDS
INNER JOIN
  (SELECT WANDS.CODE,
          WANDS.POWER,
          MIN(WANDS_PROPERTY.AGE) AS AGE,
          MIN(WANDS.COINS_NEEDED) AS MIN_PRICE
   FROM WANDS
   INNER JOIN WANDS_PROPERTY ON WANDS.CODE = WANDS_PROPERTY.CODE
   WHERE WANDS_PROPERTY.IS_EVIL = 0
   GROUP BY WANDS.CODE,
            WANDS.POWER) MIN_PRICES ON WANDS.CODE = MIN_PRICES.CODE
AND WANDS.POWER = MIN_PRICES.POWER
AND WANDS.COINS_NEEDED = MIN_PRICES.MIN_PRICE
ORDER BY WANDS.POWER DESC,
         MIN_PRICES.AGE DESC;
