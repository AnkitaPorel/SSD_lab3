SELECT
    c.customerNumber,
    c.customerName
FROM
    customers c
JOIN
    orders o ON c.customerNumber = o.customerNumber
JOIN
    payments p ON c.customerNumber = p.customerNumber
GROUP BY
    c.customerNumber,
    c.customerName;
