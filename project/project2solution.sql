--Q1
SELECT EMPID, LASTNAME
FROM HR.EMPLOYEES
ORDER BY EMPID DESC;

--Q2
SELECT EMPID, LASTNAME
FROM HR.EMPLOYEES
ORDER BY EMPID;

--Q3
select * from HR.EMPLOYEES;

SELECT COUNTRY, HIREDATE, COUNT(*) AS NUMBEREMPLOYEESgit
FROM HR.EMPLOYEES
WHERE HIREDATE>='20030101'
GROUP BY COUNTRY, HIREDATE
HAVING COUNT(*)>1;

--Q4 A
SELECT SHIPPERID, SUM(FREIGHT)AS TOTALFRIEGHT
FROM SALES.ORDERS
GROUP BY SHIPPERID
HAVING SUM(FREIGHT)>20000.00;

--B
SELECT SHIPPERID, SUM(FREIGHT)AS TOTALFRIEGHT
FROM SALES.ORDERS
GROUP BY SHIPPERID
HAVING SUM(FREIGHT)>20000.00;

--Q5
SELECT SHIPPERID, COMPANYNAME, PHONE 
FROM SALES.SHIPPERS;
--ORDER BY SHIPPERID DESC;

--Q6
SELECT S.SHIPPERID, S.COMPANYNAME, S.PHONE 
FROM SALES.SHIPPERS S

--Q7
SELECT EMPID, FIRSTNAME, LASTNAME, COUNTRY,
REGION, CITY
FROM HR.Employees
WHERE REGION= 'WA';

--Q8
SELECT EMPID, FIRSTNAME, LASTNAME, COUNTRY,
REGION, CITY
FROM HR.Employees
WHERE REGION IS NULL;

SELECT * FROM HR.Employees

--Q9
SELECT EMPID, ORDERID, ORDERDATE,CUSTID
FROM SALES.ORDERS
WHERE ORDERDATE BETWEEN 
'20080211' AND '20080213';

--Q10
SELECT EMPID, FIRSTNAME, LASTNAME, CITY
FROM HR.Employees
WHERE CITY LIKE '%A%';
