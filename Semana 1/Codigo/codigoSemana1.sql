Use AdventureWorksDW2022;

--USO DE SUM()
SELECT SUM(TotalProductCost) AS VALORTOTAL
FROM FactInternetSales;


--USO DE COUNT()

SELECT COUNT(ProductSubcategoryKey) AS CANTIDAD
FROM FactSurveyResponse;


--AVG()
SELECT AVG(SalesAmount) AS PromedioVentas
FROM FactInternetSales;


---MAX()

SELECT MAX(ProductStandardCost) AS PRODUCTODEMAYORCOSTO
FROM FactInternetSales;

--MIN()

SELECT Min(ProductStandardCost) AS PRODUCTOMENORCOSTO
FROM FactInternetSales;
--GROUP BY
SELECT ProductKey, AVG(SalesAmount) AS PromedioVentas
FROM FactInternetSales
GROUP BY ProductKey;

--HAVING
SELECT ProductKey,COUNT(TaxAmt) AS IMPUESTOS
FROM FactInternetSales
GROUP BY ProductKey
HAVING COUNt(TaxAmt)>50;