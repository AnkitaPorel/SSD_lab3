SELECT DISTINCT
    c.city
FROM
    customers c
JOIN
    offices o ON c.city = o.city;
