SELECT
    o.orderNumber,
    o.orderDate,
    o.requiredDate,
    o.shippedDate,
    o.status,
    od.productCode,
    p.productName,
    p.quantityInStock
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
LEFT JOIN
    products p ON od.productCode = p.productCode;
