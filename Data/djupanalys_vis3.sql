USE AdventureWorks2025
SELECT * FROM Sales.SalesTerritory
SELECT * FROM Sales.SalesOrderHeader

SELECT
    st.Name AS RegionName,
    DATEFROMPARTS(YEAR(soh.OrderDate), MONTH(soh.OrderDate), 1) AS YearMonth,
    SUM(soh.SubTotal) AS TotalSales
FROM Sales.SalesTerritory st  
INNER JOIN Sales.Customer c ON st.TerritoryID = c.TerritoryID
INNER JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
GROUP BY st.Name, YEAR(OrderDate), MONTH(OrderDate)
ORDER BY RegionName,YearMonth