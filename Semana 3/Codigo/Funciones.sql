USE AdventureWorksDW2022;

GO
CREATE FUNCTION dbo.CalcularIGV (@precio DECIMAL(10,2) )
RETURNS DECIMAL(10,2)
AS 
BEGIN 
    RETURN @precio * 0.18;
    
END;
GO

SELECT 100 AS Precio,
       dbo.CalcularIGV(100) AS IGV;
