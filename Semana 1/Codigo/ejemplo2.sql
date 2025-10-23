USE AdventureWorksDW2022;


SELECT FirstName, DepartmentName,
COUNT(EmployeeKey) AS CantidadEmpleados,
AVG(VacationHours) AS PromedioVacaciones
FROM DimEmployee
WHERE DepartmentName = 'Production'
GROUP BY FirstName, DepartmentName
HAVING COUNT(EmployeeKey) >= 1;
