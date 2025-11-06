USE AdventureWorksDW2022


DECLARE @TotalVentas INT;

SELECT @TotalVentas = COUNT(*)
FROM FactInternetSales;

PRINT 'El número total de ventas registradas es: ' + CAST(@TotalVentas AS VARCHAR);
