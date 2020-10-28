'''
Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
@Coded by TSG, 2020
'''

SELECT TOP 1 CITY,LEN(CITY) FROM STATION ORDER BY LEN (CITY) ASC ,CITY ASC ;SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN (CITY) DESC,CITY ASC ;
