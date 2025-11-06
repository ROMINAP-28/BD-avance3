USE AdventureWorksDW2022;
GO
CREATE PROCEDURE ObtenerVentasPorCliente
    @CustomerKey INT
AS
BEGIN
    SELECT 
        SalesOrderNumber,
        OrderDate,
        SalesAmount AS PrecioVenta,
        TaxAmt AS Impuesto,
        TotalProductCost AS CostoProducto
    FROM FactInternetSales
    WHERE CustomerKey = @CustomerKey;
END;
GO
EXEC ObtenerVentasPorCliente 21768;
