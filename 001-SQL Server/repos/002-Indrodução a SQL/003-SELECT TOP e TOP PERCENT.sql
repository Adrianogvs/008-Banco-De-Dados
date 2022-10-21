-- Conectando no banco de dados ContosoRetailDW
USE ContosoRetailDW

-- Comando SELECT TOP(N) E TOP(N) PERCENT: 

-- 1. Crie um código que retorna as 10 primeiras linhas da tabela de Produtos
SELECT TOP(10) *
FROM DimProduct;

-- 2. Crie um código que retorna as 10% primeiras linhas da tabela de Clientes.
SELECT TOP(10) PERCENT *
FROM DimCustomer;
