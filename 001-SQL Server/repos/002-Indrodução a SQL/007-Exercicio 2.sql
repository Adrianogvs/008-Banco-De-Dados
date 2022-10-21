/*
2. Você trabalha no setor de Marketing da empresa Contoso e acaba de ter uma ideia de oferecer descontos especiais para os clientes no dia de seus aniversários.
   Para isso, você vai precisar listar todos os clientes e suas respectivas datas de nascimento, alem de um contato.

a) Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela dimCustomer.

b) Renomeie as colunas dessa tabela usando o alias (comando AS)

*/

-- A) RESPOSTA:

-- CONECTANDO NO BANCO 
USE ContosoRetailDW

SELECT	CustomerKey  AS Código, 
		FirstName    AS "Primeiro Nome", 
		EmailAddress AS Email, 
		BirthDate    As "Data Nascimento"
FROM DimCustomer;