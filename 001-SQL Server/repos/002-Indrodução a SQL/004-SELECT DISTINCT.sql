-- Conectando no banco de dados
USE ContosoRetailDW

-- Comando SELECT DISTINCT: Retorna os valores distintos de uma tabela

-- Retorne todas as linhas da tabela dimProduct

SELECT	*
FROM DimProduct;


-- Retorna os valores distintos da coluna ColorName da tabela dimProduct.
SELECT	DISTINCT ColorName
FROM DimProduct;


