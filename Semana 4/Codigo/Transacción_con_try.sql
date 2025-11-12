USE AdventureWorksDW2022;

BEGIN TRY
    BEGIN TRANSACTION;

    INSERT INTO FactInternetSales
    (ProductKey, CustomerKey, OrderDateKey, DueDateKey, ShipDateKey, 
     SalesOrderNumber, SalesAmount)
    VALUES
    (310, 11000, 20250101, 20250105, NULL,
     'SO12345', 250.00);

    COMMIT TRANSACTION;
    PRINT 'Transacción ejecutada correctamente.';
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;

    PRINT 'Hubo un error. La transacción se ha revertido.';
    SELECT 
        ERROR_NUMBER() AS NumeroError,
        ERROR_MESSAGE() AS MensajeError;
END CATCH;
