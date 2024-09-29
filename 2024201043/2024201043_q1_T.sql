WITH AverageSales AS (
    SELECT
        c.customerNumber,
        c.customerName,
        SUM(od.quantityOrdered * od.priceEach) AS totalSales
    FROM
        customers c
    JOIN
        orders o ON c.customerNumber = o.customerNumber
    JOIN
        orderdetails od ON o.orderNumber = od.orderNumber
    GROUP BY
        c.customerNumber, c.customerName
),
AverageSalesAmount AS (
    SELECT
        AVG(totalSales) AS avgSales
    FROM
        AverageSales
)
SELECT
    a.customerNumber,
    a.customerName,
    a.totalSales
FROM
    AverageSales a
JOIN
    AverageSalesAmount asa ON a.totalSales > 2 * asa.avgSales;
