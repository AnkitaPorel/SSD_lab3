SELECT
    e.employeeNumber, e.lastName,e.firstName,e.officeCode,e.reportsTo,e.jobTitle
FROM
    employees e
LEFT JOIN
    employees m ON e.employeeNumber = m.reportsTo
WHERE
    m.employeeNumber IS NULL;
