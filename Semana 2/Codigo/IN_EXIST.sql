use AdventureWorksDW2022;

---USO DEL IN
SELECT c.FirstName,c.LastName
FROM  DimCustomer c
WHERE 
    c.GeographyKey IN (
        SELECT GeographyKey
        FROM DimGeography
        WHERE SpanishCountryRegionName = 'Australia'
    );

---USO DEL EXISTS 
SELECT FirstName,LastName
FROM  DimCustomer 
WHERE EXISTS (
        SELECT 1
        FROM DimGeography 
        WHERE GeographyKey = GeographyKey
        AND SpanishCountryRegionName = 'Canada'
    );
