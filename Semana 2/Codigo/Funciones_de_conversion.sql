---FUNCIONES DE CONVERSION


--CAST()

	SELECT EnglishProductName,ListPrice CAST(ListPrice AS INT) AS decimal_a_entero
	FROM DimProduct;

--CONVERT()
	SELECT EnglishProductName,'USD' + CONVERT(VARCHAR(20),ListPrice) AS PrecioEtiqueta 
	FROM DimProducto;
