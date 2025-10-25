---Total de empleados

SELECT DepartmentName, 
       COUNT(EmployeeKey) AS CantidadEmpleados
FROM DimEmployee
GROUP BY DepartmentName;
