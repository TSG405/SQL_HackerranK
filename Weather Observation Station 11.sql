'''
Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
@Coded by TSG, 2020
'''

SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(UPPER(CITY), '^[^AEIOU]')
   OR REGEXP_LIKE(UPPER(CITY), '[^AEIOU]$');
