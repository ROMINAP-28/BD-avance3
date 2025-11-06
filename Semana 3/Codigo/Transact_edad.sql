
GO

CREATE FUNCTION dbo.CalcularEdadEmpleado (@FechaNacimiento DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Edad INT;
    SET @Edad = DATEDIFF(YEAR, @FechaNacimiento, GETDATE());

RETURN @Edad;
END;
GO

SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    BirthDate,
    dbo.CalcularEdadEmpleado(BirthDate) AS Edad
FROM DimEmployee;
