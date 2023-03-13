/*CRIAÇÃO TABELA*/
CREATE TABLE tabela1 (id_unidade int, unidade varchar(56), quantidade_atendimento int, dia_atendimento date);
/*INSERIR DADOS*/
INSERT INTO tabela1 (id_unidade, quantidade_atendimento, dia_atendimento) SELECT id_web_unidade, quantidade, dia 
FROM sigaweb.atendimento_diario_unidade;
/*VIZUALIZAR TABELAS*/
SELECT * FROM tabela1;
/*Inserção das unidades de acordo com o ID das unidades*/
SET @@global.sql_mode='';
use siganet1;
update tabela1
set unidade = 'TAGUATINGA' where id_unidade = 8;
update tabela1
set unidade = 'SOBRADINHO' where id_unidade = 9;
update tabela1
set unidade = 'CEILANDIA' where id_unidade = 10;
update tabela1
set unidade = 'RODOVIARIA' where id_unidade = 11;
update tabela1
set unidade = 'GAMA' where id_unidade = 12;
update tabela1
set unidade = 'RIACHO FUNDO' where id_unidade = 13;