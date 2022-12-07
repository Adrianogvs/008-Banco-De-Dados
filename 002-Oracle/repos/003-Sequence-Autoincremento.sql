-- SEQUENCE E AUTOINCREMENTO

-- O QUE SÃO SEQUENCE?
/*
Sequences são objetos que geram números sequenciais dentro do Oracle. 
São excelentes em termos de performance já que armazenam um range de números no cache e também porque tiram do desenvolvedor a responsabilidade de gerenciar a geração de Ids em casos de multiplos acessos.

Para criar uma sequence usamos a sintaxe abaixo.

CREATE SEQUENCE sqTeste
    MINVALUE 1
    MAXVALUE 300
    START WITH 1
    INCREMENT BY 1
    CACHE 20;

* INCREMENT BY: Informa ao sistema como incrementar a sequence, pode receber valores positivos e negatives. Se o valor informado for positivo a sequence será ascendente, se o valor for negativo a sequence será decrescente.
* START WITH: Informa ao sistema o valor inteiro com o qual a sequence iniciará.
* MINVALUE: Informa ao sistema o menor valor que uma sequence pode ter. Normalmente o valor desta propriedade é o mesmo valor da propriedade Start With.
* MAXVALUE: Informa ao sistema o maior valor que uma sequence pode assumir.
* CACHE: Especifica o número de valores da sequence que ficarão armazenados. Ou seja, só haverá processamento para a recuperação de valores, quando o range de valores armazenados no cache acabar.

Agora que você já sabe como criar um sequence, vamos ver o que eu considero o seu principal uso, fazer um Insert em uma tabela que possui um campo numérico como chave primária.

INSERT INTO CLIENTE
 (ID, NOME)
 VALUES
 (sqTeste.nextval, 'Adonirandina')
*/

-- CRIANDO TABELA 
CREATE TABLE TABELA
(
    CODIGO INTEGER NOT NULL PRIMARY KEY,
    NOME VARCHAR2(40)
);

-- SELECTIONANDO TABELA
SELECT *
FROM TABELA;


-- VISUALIZAR A DESCRIÇÃO DA TABELA COMO COMANDO "DESC"
DESC TABELA;


-- CRIANDO SEQUENCE MODO SIMPLES
CREATE SEQUENCE SEQ_TABELA;


-- INSERINDO DADOS NA TABELA
INSERT INTO TABELA (CODIGO, NOME) VALUES (SEQ_TABELA.NEXTVAL, 'ADRIANO');
INSERT INTO TABELA (CODIGO, NOME) VALUES (SEQ_TABELA.NEXTVAL, 'VILELA');
INSERT INTO TABELA (CODIGO, NOME) VALUES (SEQ_TABELA.NEXTVAL, 'SILVA');
INSERT INTO TABELA (CODIGO, NOME) VALUES (SEQ_TABELA.NEXTVAL, 'GERALDO');

SELECT * FROM TABELA
ORDER BY 2;


-- DROPANDO UMA SEQUENCE
DROP SEQUENCE SEQ_TABELA;


-- CRIANDO UMA SEQUENCE COMEÇANDO EM 50
CREATE SEQUENCE SEQ_TABELA START WITH 50;


-- VERIFICAR O VALOR ATUAL DA SEQUENCE
SELECT SEQ_TABELA.CURRVAL FROM DUAL;


-- VERIFICAR AS SEQUENCES QUE EXISTEM
SELECT *
FROM USER_SEQUENCES;

