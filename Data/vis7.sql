USE AdventureWorks2025
SELECT * FROM Sales.SalesTerritory
SELECT * FROM Sales.SalesOrderHeader
SELECT * FROM Sales.Customer
SELECT * FROM Sales.Store

-- Gjorde först en Query med AVG men insåg att det var bättre att få med mer info till analysen, så använde inte denna
SELECT
    st.Name AS RegionName,
    CASE 
        WHEN c.StoreID IS NOT NULL THEN 'Store'
        ELSE 'Person'
    END AS CustomType,
    AVG(soh.SubTotal) AS AvgOrderValue
FROM Sales.SalesTerritory st  
INNER JOIN Sales.Customer c ON st.TerritoryID = c.TerritoryID
INNER JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
GROUP BY st.Name, 
        CASE WHEN c.StoreID IS NOT NULL THEN 'Store' ELSE 'Person' END
ORDER BY AvgOrderValue DESC


-- Ny Query, bättre för att använda vidare med python i Notebook
SELECT
    st.Name AS RegionName,
    CASE 
        WHEN c.StoreID IS NOT NULL THEN 'Store'
        ELSE 'Person'
    END AS CustomType,
    SUM(soh.SubTotal) AS TotalSales,
    COUNT(*) AS OrderCount
FROM Sales.SalesTerritory st  
INNER JOIN Sales.Customer c ON st.TerritoryID = c.TerritoryID
INNER JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
GROUP BY st.Name, 
         CASE WHEN c.StoreID IS NOT NULL THEN 'Store' ELSE 'Person' END
ORDER BY st.Name, CustomType DESC
