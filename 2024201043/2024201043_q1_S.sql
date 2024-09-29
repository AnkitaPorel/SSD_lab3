SELECT
    pl.productLine,
    o.officeCode,
    o.city,
    o.country
FROM
    productlines pl
CROSS JOIN
    offices o;
