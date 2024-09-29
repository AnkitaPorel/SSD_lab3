SELECT
    p.productCode,
    p.productName,
    o.orderNumber
FROM
    products p
LEFT JOIN
    orderdetails od ON p.productCode = od.productCode
LEFT JOIN
    orders o ON od.orderNumber = o.orderNumber;
