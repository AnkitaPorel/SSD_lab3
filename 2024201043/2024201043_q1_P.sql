SELECT
    o.orderNumber,
    o.orderDate,
    o.requiredDate,
    o.shippedDate,
    p.productName
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
JOIN
    products p ON od.productCode = p.productCode;
