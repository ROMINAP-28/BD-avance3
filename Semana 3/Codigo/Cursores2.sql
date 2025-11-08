USE AdventureWorksDW2022;

DECLARE @SalesAmount DECIMAL(18,2);
DECLARE @Total DECIMAL(18,2) = 0;

DECLARE cursor_ventas CURSOR FOR
SELECT SalesAmount
FROM FactInternetSales;   

OPEN cursor_ventas;

FETCH NEXT FROM cursor_ventas INTO @SalesAmount;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Acumular el total
    SET @Total = @Total + @SalesAmount;

    FETCH NEXT FROM cursor_ventas INTO @SalesAmount;
END

CLOSE cursor_ventas;
DEALLOCATE cursor_ventas;

PRINT 'El total acumulado de ventas es: ' + CAST(@Total AS VARCHAR(40));
