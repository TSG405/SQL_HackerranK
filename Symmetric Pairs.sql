'''
Problem Statement: https://www.hackerrank.com/challenges/symmetric-pairs/problem
@Coded by TSG, 2020
'''

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
with tbl1 as 
(
select IIF(x<=y, x, y) as X1, IIF(x<=y, y, x) as Y1 from functions
)
, tbl as (
select x1, y1, count(*) as countx from tbl1
  group by x1,y1
    having count(*)=2
)
Select  x1,y1 from tbl
ORDER BY X1
