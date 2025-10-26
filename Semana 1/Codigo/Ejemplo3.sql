USE AdventureWorksDW2022

SELECT DepartmentName,
       AVG(VacationHours) AS PromedioVacaciones,
       MAX(VacationHours) AS MaxVacaciones,
       MIN(VacationHours) AS MinVacaciones
FROM DimEmployee
GROUP BY DepartmentName;
