'''
Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
@Coded by TSG, 2020
'''

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT TOP 1 FORMAT((PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY LAT_N)
OVER(PARTITION BY DUMMY)),'#.####') AS median
FROM (select 1 as dummy, * from Station) tstation ;
