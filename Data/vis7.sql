SELECT * FROM Sales.SalesTerritory
SELECT * FROM Sales.SalesOrderHeader
SELECT * FROM Sales.Customer
SELECT * FROM Sales.Store


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