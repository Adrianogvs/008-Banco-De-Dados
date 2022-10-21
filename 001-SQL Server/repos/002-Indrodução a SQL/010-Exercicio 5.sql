/*

5. O seu trabalho de investiga��o n�o para. Voc� precisa descobrir se existe algum produto registrado na base de produtos que ainda n�o tenha sido vendido. 
Tente chegar nessa informa��o.
Obs: caso tenha algum produto que ainda n�o tenha sido vendido, voc� n�o precisa descobrir qual �, 
� suficiente saber se teve ou n�o algum produto que ainda n�o foi vendido.

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

