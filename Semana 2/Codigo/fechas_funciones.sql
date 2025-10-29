USE AdventureWorksDW2022;

--- funciones de fecha 
SELECT 
    SalesOrderNumber,
    OrderDate,
    YEAR(OrderDate) AS A�o,
    MONTH(OrderDate) AS Mes,
    DAY(OrderDate) AS D�a
FROM FactInternetSales;

---dateadd()
SELECT OrderDate,DATEADD(day, 30, OrderDate) AS FechaMas30Dias
FROM FactInternetSales;

---date diff
SELECT SalesOrderNumber,DATEDIFF(day, OrderDate, ShipDate) AS Dias_Entre_Orden_Envio
FROM FactInternetSales;


---getdate()
SELECT GETDATE() AS FechaHoy;
