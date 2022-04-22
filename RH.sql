create database  db_servico_rh ;
USE db_servicorh;

CREATE  TABLE  tb_funcionarios (
id bigint AUTO_INCREMENT,
nome varchar ( 255 ) NOT NULL ,
idade int ,
setor varchar ( 255 ),
salario decimal  NOT NULL ,
data_admissao date ,
primary key (id)
);

-- INSERINDO DADOS AS COLUNAS
INSERT INTO tb_funcionarios (nome, idade, data_admissao, salario, setor)
values ( " João " , 23 , " 2019-02-17 " , 2000.00 , 00 , " Maquinario " );

INSERT INTO tb_funcionarios (nome, idade, data_admissao, salario, setor)
values ( " Rebeca " , 42 , " 2015-07-13 " , 1500.00 , " Limpeza " ) ;

INSERT INTO tb_funcionarios (nome, idade, data_admissao, salario, setor)
values ( " Beatriz " , 33 , " 2020-01-20 " , 1800.00 , " RH " ) ; 

-- MODIFICANDO DECIMAL
ALTER  TABLE tb_funcionarios MODIFY salario decimal ( 8 , 2 );

-- COMANDO PARA MOSTRAR A TABELA
select  *  into tb_funcionarios;

-- MOSTRANDO INFORMAÇÕES DO EXERCÍCIOS
select  *  FROM tb_funcionarios WHERE salario >  200.00 ;
select  *  FROM tb_funcionarios WHERE salario <  2000.00 ;

-- Ana fez aniversário, alterando a idade...
UPDATE tb_funcionarios SET idade =  46  WHERE id =  3 ;