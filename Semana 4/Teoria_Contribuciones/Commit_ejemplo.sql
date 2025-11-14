USE AdventureWorksDW2022;

BEGIN TRANSACTION;

UPDATE DimCustomer
SET EmailAddress = 'romina.paredes@ejemplo.com'
WHERE CustomerKey = 11000;

COMMIT TRANSACTION;