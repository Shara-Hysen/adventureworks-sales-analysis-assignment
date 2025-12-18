SELECT * FROM Sales.SalesOrderHeader

SELECT
    YEAR(OrderDate) AS OrderYear,
    COUNT(DISTINCT SalesOrderID) AS TotalOrder,
    SUM(SubTotal) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear
