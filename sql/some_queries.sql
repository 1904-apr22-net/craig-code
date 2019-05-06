-- 4
SELECT FirstName, MiddleName, LastName, c.CustomerID, CountryRegion
FROM SalesLT.Customer AS c 
    INNER JOIN SalesLT.CustomerAddress AS ca ON c.CustomerID = ca.CustomerID
    INNER JOIN SalesLT.Address AS a ON ca.AddressID = a.AddressID
WHERE CountryRegion != 'United States'

-- 6
SELECT DISTINCT SalesPerson
FROM SalesLT.Customer

-- 11
SELECT COUNT(SalesOrderID) AS SalesOrderId, SUM(TotalDue) AS Total, CountryRegion AS Country
FROM SalesLT.SalesOrderHeader soh
    INNER JOIN SalesLT.Address a ON soh.ShipToAddressID = a.AddressID
GROUP BY CountryRegion
ORDER BY SUM(TotalDue) DESC;

-- 10
SELECT a.CountryRegion AS Country, COUNT(soh.SalesOrderID) AS Invoices
FROM SalesLT.Address a
    INNER JOIN SalesLT.SalesOrderHeader soh ON soh.BillToAddressID = a.CountryRegion
GROUP BY a.CountryRegion