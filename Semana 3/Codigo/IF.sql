USE AdventureWorksDW2022

DECLARE @CustomerKey INT = 28389; 

IF EXISTS (SELECT 1 FROM FactInternetSales WHERE CustomerKey = @CustomerKey)
BEGIN
    SELECT SalesOrderNumber, OrderDate, SalesAmount
    FROM FactInternetSales
    WHERE CustomerKey = @CustomerKey;
END
ELSE
BEGIN
    PRINT 'Este cliente no tiene ventas registradas.';
END;
