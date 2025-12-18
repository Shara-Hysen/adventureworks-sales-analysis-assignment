SELECT * FROM Production.Product
SELECT * FROM Sales.SalesOrderDetail

SELECT
    TOP 10
    p.Name AS ProductName,
    SUM(sod.LineTotal) AS TotalSales,
    pc.Name AS CategoryName
FROM Production.Product p  
INNER JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
INNER JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
INNER JOIN Production.ProductCategory pc ON ps.ProductCategoryID = pc.ProductCategoryID
GROUP BY p.ProductID, p.Name, pc.Name
ORDER BY TotalSales DESC