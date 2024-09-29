SELECT
    p.productCode,
    p.productName,
    o.officeCode,
    o.city,
    o.country
FROM
    products p
CROSS JOIN
    offices o;
