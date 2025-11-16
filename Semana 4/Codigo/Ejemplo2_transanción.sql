USE AdventureWorksDW2022;

BEGIN TRY
    BEGIN TRANSACTION;

    UPDATE DimCustomer
    SET EmailAddress = 'romi.new@example.com'
    WHERE CustomerKey = 11000;

    UPDATE FactInternetSales
    SET SalesAmount = SalesAmount + 50
    WHERE ProductKey = 310;

    COMMIT TRANSACTION;
    PRINT 'Transacción completada con éxito.';
END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION;

    PRINT 'Ocurrió un error:';
    PRINT ERROR_MESSAGE();
END CATCH;
