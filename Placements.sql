'''
Problem Statement: https://www.hackerrank.com/challenges/placements/problem
@Coded by TSG, 2020
'''

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
Select  S.Name as SelfName  from Students S , Friends F, Packages P , Packages P2
WHERE S.ID=P.ID
AND  S.ID=F.ID
AND F.FRIEND_ID=P2.ID
AND P2.SALARY>P.SALARY
ORDER BY P2.SALARY;
