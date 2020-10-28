'''
Problem Statement: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
@Coded by TSG, 2020
'''

SELECT N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST
ORDER BY N;
