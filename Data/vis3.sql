SELECT * FROM Sales.SalesOrderHeader

SELECT
    DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate), 1) AS YearMonth,
    SUM(SubTotal) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY YearMonth