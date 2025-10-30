USE AdventureWorksDW2022;	

-- FUNCIONES DE CADENA

---CONCAT()
	SELECT CONCAT(firstname,' ',Lastname) AS Nombre_completo_cliente
	FROM DimCustomer


---LEN()

	SELECT LEN (ProductoKey) AS LONGITUD_DEL_ID
	FROM DimProduct

---SUBSTRING()
	SELECT SUBSTRING(Lastname,1,3) AS Primeras3letras
	FROM DimCustomer


---LOWER()
	SELECT LOWER(EmailAddress) AS correo_minusculas
	FROM DimCustomer


---UPPER()
	
	SELECT UPPER(Firstname,Lastname) AS nombres_Mayusculas
	FROM DimCustomer

---LTRIM
	
	SELECT LTRIM(Lastname) AS apellido_sin_espacios
	FROM DimEmployee

---RTRIM
	SELECT RTRIM(Firstname)AS nombre_sin_espacios_izquierda
	FROM DimEmployee