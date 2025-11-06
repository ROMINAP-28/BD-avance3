

DECLARE @Nombre VARCHAR(50), @Apellido VARCHAR(50);

DECLARE cursor_empleados CURSOR FOR
SELECT FirstName, LastName
FROM DimEmployee;

OPEN cursor_empleados;

FETCH NEXT FROM cursor_empleados INTO @Nombre, @Apellido;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Empleado: ' + @Nombre + ' ' + @Apellido;

    FETCH NEXT FROM cursor_empleados INTO @Nombre, @Apellido;
END;

CLOSE cursor_empleados;
DEALLOCATE cursor_empleados;
