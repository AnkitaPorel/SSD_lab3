SELECT
    od.productCode,
    p.productName,
    SUM(od.quantityOrdered) AS totalQuantityOrdered
FROM
    orderdetails od
JOIN
    products p ON od.productCode = p.productCode
GROUP BY
    od.productCode, p.productName
HAVING
    SUM(od.quantityOrdered) > 1000;
