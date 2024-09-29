WITH employee_Sales AS (
    SELECT
        e.employeeNumber,
        e.firstName,
        e.lastName,
        SUM(od.quantityOrdered * od.priceEach) AS total_Sales
    FROM
        employees e
    JOIN
        customers c ON e.employeeNumber = c.salesRepEmployeeNumber
    JOIN
        orders o ON c.customerNumber = o.customerNumber
    JOIN
        orderdetails od ON o.orderNumber = od.orderNumber
    GROUP BY
        e.employeeNumber, e.firstName, e.lastName
)
SELECT
    employeeNumber,
    firstName,
    lastName,
    total_Sales
FROM
    employee_Sales
ORDER BY
    total_Sales DESC
LIMIT 3;
