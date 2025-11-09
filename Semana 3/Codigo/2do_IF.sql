USE AdventureWorksDW2022;


IF EXISTS (SELECT 1 FROM FactInternetSales WHERE SalesAmount > 5000)
BEGIN
    SELECT 
        SalesOrderNumber,
        SalesAmount,
        OrderDate
    FROM FactInternetSales
    WHERE SalesAmount > 5000;
END
ELSE
BEGIN
    PRINT 'No existen ventas mayores a 5000.';
END;
