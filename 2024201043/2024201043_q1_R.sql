SELECT
    o.orderNumber,
    o.orderDate,
    o.requiredDate,
    o.shippedDate,
    od.productCode,
    p.productName
FROM
    orders o
LEFT JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
LEFT JOIN
    products p ON od.productCode = p.productCode;
