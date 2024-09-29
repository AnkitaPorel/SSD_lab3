SELECT 
    emp.employeeNumber,
    emp.firstName,
    emp.lastName,
    SUM(od.quantityOrdered * od.priceEach) AS total_Sales
FROM
    employees emp
JOIN
    offices o ON emp.officeCode = o.officeCode
JOIN
    customers c ON emp.employeeNumber = c.salesRepEmployeeNumber
JOIN
    orders o2 ON c.customerNumber = o2.customerNumber
JOIN
    orderdetails od ON o2.orderNumber = od.orderNumber
WHERE
    o.country = 'USA'
GROUP BY
    emp.employeeNumber, emp.firstName, emp.lastName
ORDER BY
    total_Sales DESC
LIMIT 5;
