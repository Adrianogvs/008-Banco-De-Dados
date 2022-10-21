/*

5. O seu trabalho de investigação não para. Você precisa descobrir se existe algum produto registrado na base de produtos que ainda não tenha sido vendido. 
Tente chegar nessa informação.
Obs: caso tenha algum produto que ainda não tenha sido vendido, você não precisa descobrir qual é, 
é suficiente saber se teve ou não algum produto que ainda não foi vendido.

*/

-- CONECTANDO NO BANCO DE DADOS
USE ContosoRetailDW

SELECT	*
FROM DimProduct;

--
SELECT	COUNT(*) AS TOTAL
FROM DimProduct;


SELECT	TOP(100) * 
FROM FactSales;

-- FORAM VENDIDOS 2516 PRODUTOS
SELECT COUNT(*) AS TOTAL 
FROM (
		SELECT	DISTINCT PRODUCTKEY 
		FROM FactSales
) TABELA;

