'''
Problem Statement: https://www.hackerrank.com/challenges/the-company/problem
@Coded by TSG, 2020
'''

SELECT C.COMPANY_CODE,
       C.FOUNDER,
  (SELECT COUNT(DISTINCT LEAD_MANAGER_CODE)
   FROM LEAD_MANAGER L
   WHERE L.COMPANY_CODE = C.COMPANY_CODE),
  (SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE)
   FROM SENIOR_MANAGER S
   WHERE S.COMPANY_CODE = C.COMPANY_CODE),
  (SELECT COUNT(DISTINCT MANAGER_CODE)
   FROM MANAGER M
   WHERE M.COMPANY_CODE = C.COMPANY_CODE),
  (SELECT COUNT(DISTINCT EMPLOYEE_CODE)
   FROM EMPLOYEE E
   WHERE E.COMPANY_CODE = C.COMPANY_CODE)
FROM COMPANY C
ORDER BY C.COMPANY_CODE ASC;