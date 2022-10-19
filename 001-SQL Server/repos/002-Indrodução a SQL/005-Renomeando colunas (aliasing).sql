-- Conectando no banco de dados
USE ContosoRetailDW

-- Comando AS: Renomeando colunas (aliasing)

-- Selecione as 3 colunas da tabela dimProduct: ProductName, BrandName e ColorName

SELECT	ProductName AS Produto,
		BrandName   AS Marca,
		ColorName   AS Cor
FROM DimProduct;

/*Observa��o:
  Se for utilizar o nome composto, deve-se utilizar aspas para que o nome seja composto, caso n�o fa�a isso, pode gerar erro.
  Exemplo:

  ProductName AS Nome do Produto, deve-se colocar assim:

  ProductName AS "Nome do Produto"

*/