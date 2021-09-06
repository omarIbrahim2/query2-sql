query 1

SELECT orderNumber , SUM(priceEach)  AS TotalPayment  FROM orderdetails
GROUP BY orderNumber

________________________

query 2 

SELECT E.firstName AS empfirstName , E.lastName AS empLastName , M.firstName AS mangfirstName , M.lastName AS mangLastName
FROM  employees E 
inner join employees M
WHERE E.employeeNumber = M.reportsTo

____________________________

query 3

SELECT * FROM employees 
WHERE officeCode = (SELECT officeCode FROM offices WHERE city = "London")


____________________________

query 4

SELECT * FROM employees join offices 
ON employees.officeCode = offices.officeCode 
AND offices.city = "London"

________________________
