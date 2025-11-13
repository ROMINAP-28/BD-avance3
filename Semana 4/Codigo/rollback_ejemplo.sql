USE AdventureWorksDW2022;

BEGIN TRANSACTION;

UPDATE DimProduct
SET StandardCost = StandardCost - 100
WHERE ProductKey = 310;

-- Validación
IF (SELECT StandardCost FROM DimProduct WHERE ProductKey = 310) <= 0
BEGIN
    PRINT 'ERROR: El costo no puede ser menor o igual a 0. Se revierte.';
    ROLLBACK TRANSACTION;
END
ELSE
BEGIN
    PRINT 'Actualización correcta. Se guardan los cambios.';
    COMMIT TRANSACTION;
END
