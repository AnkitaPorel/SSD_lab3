SELECT
    c.customerNumber,
    c.customerName
FROM
    customers c
LEFT JOIN
    orders o ON c.customerNumber = o.customerNumber
WHERE
    o.orderNumber IS NULL;
