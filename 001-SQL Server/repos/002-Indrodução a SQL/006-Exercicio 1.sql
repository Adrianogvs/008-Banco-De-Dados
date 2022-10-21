/*
Você é reponsável por controlar os dados de clientes e de produtos da sua empresa.

O que você precisará fazer é confirmar se:
a) Existem 2.517 produtos cadastrados na base e, senão tiver, você deverá reportar ao seu gestor para saber se existe alguma defasagem no controle dos produtos.
b) Até o mês passado, a empresa tinha um total um de 19.500 clientes na base de controle, verifique se esse número aumentou

*/

-- A) RESPOSTA: 2517
SELECT	COUNT(*) AS TOTAL
FROM DimProduct;

-- B) RESPOSTA: 18869, ESTA COM 631 A MENOS.
SELECT	COUNT(*) AS TOTAL
FROM DimCustomer;

