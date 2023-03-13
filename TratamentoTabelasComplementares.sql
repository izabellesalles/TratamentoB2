/*AUTOR: IZABELLE SALLES*/
/*Tratamento dos dados das tabela_complementares*/

/*TABELA USUARIO*/

/*Inserção dos dados que faltam*/
CREATE TABLE t1 AS(SELECT c.id, c.id_unidade, c.unidade, c.id_usuario, w.nome, id_net_usuario 
FROM tabelas_complementares.usuario c
RIGHT JOIN sigaweb.web_usuario w
ON w.id=c.id_usuario);
/*vizualizar tabela*/
SELECT * FROM usuario;
/*aletrar nome da coluna modificada*/
ALTER TABLE t1 CHANGE nome Usuario VARCHAR(50);
/*Alterar nome da tabela tratada*/
RENAME TABLE usuario1 TO usuario;

/*TABELA SERVICO*/
/*vizualizar tabela*/
SELECT * FROM sigaweb.x_servico;

/*Inserção dos dados que faltam: tipo de serviço e unidade*/
/*adição dos dados referentes a UNIDADE*/
CREATE TABLE t2 AS(SELECT c.id, c.id_web_unidade, w.nome, c.id_web_servico, id_net_servico 
FROM sigaweb.x_servico c
RIGHT JOIN sigaweb.web_unidade w
ON w.id=c.id_web_unidade);
/*vizualizar tabela*/
SELECT * FROM t2;
/*aletrar nome da coluna modificada*/
ALTER TABLE t2 CHANGE nome unidade VARCHAR(30);

/*adição dos dados referentes ao SERVIÇO*/
CREATE TABLE t3 AS(SELECT c.id, c.id_web_unidade, c.unidade, c.id_web_servico, w.nome, c.id_net_servico 
FROM  tabelas_complementares.t2 c
RIGHT JOIN sigaweb.web_servico w
ON w.id=c.id_web_servico);
/*vizualizar tabela*/
SELECT * FROM t3;
/*aletrar nome da coluna modificada*/
ALTER TABLE t3 CHANGE nome servico VARCHAR(50);
/*Alterar nome da tabela*/
RENAME TABLE t3 TO servico;
/*vizualizar tabela*/
SELECT * FROM servico;

/*TABELA SEÇÃO*/
/*vizualizar tabela*/
SELECT * FROM sigaweb.x_secao;

/*Inserção dos dados que faltam: tipo de secao e unidade*/
/*adição dos dados referentes a UNIDADE - nome da unidade*/
CREATE TABLE t1 AS(SELECT c.id, c.id_web_unidade, w.nome, c.id_web_secao, id_net_secao
FROM sigaweb.x_secao c
RIGHT JOIN sigaweb.web_unidade w
ON w.id=c.id_web_unidade);
/*vizualizar tabela*/
SELECT * FROM t1;
/*aletrar nome da coluna modificada*/
ALTER TABLE t1 CHANGE nome unidade VARCHAR(30);
ALTER TABLE t1 CHANGE id_web_unidade id_unidade VARCHAR(30);

/*adição dos dados referentes ao SEÇÃO-órgão*/
CREATE TABLE t2 AS(SELECT c.id, c.id_unidade, c.unidade, c.id_web_secao, w.nome, c.id_net_secao 
FROM  tabelas_complementares.t1 c
RIGHT JOIN sigaweb.web_secao w
ON w.id=c.id_web_secao);

/*aletrar nome da coluna modificada*/
ALTER TABLE t2 CHANGE nome orgao VARCHAR(50);
/*Alterar nome da tabela*/
RENAME TABLE t2 TO secao;
/*vizualizar tabela*/
SELECT * FROM secao;

/*TABELA RESPOSTA AVALIAÇÃO*/
/*vizualizar tabela*/
SELECT * FROM sigaweb.x_resposta_avaliacao;

/*Inserção dos dados que faltam: tipo de secao e unidade*/
/*adição dos dados referentes a UNIDADE - nome da unidade*/
CREATE TABLE t1 AS(SELECT c.id, c.id_web_unidade, w.nome, c.id_web_resposta_avaliacao, id_net_resposta_avaliacao
FROM sigaweb.x_resposta_avaliacao c
RIGHT JOIN sigaweb.web_unidade w
ON w.id=c.id_web_unidade);
/*vizualizar tabela*/
SELECT * FROM t1;
/*aletrar nome da coluna modificada*/
ALTER TABLE t1 CHANGE nome unidade VARCHAR(30);
ALTER TABLE t1 CHANGE id_web_unidade id_unidade VARCHAR(30);

/*adição dos dados referentes ao id_resposta_Avaliacao*/
CREATE TABLE t2 AS(SELECT c.id, c.id_unidade, c.unidade, c.id_web_resposta_avaliacao, w.nome, c.id_net_resposta_avaliacao 
FROM  tabelas_complementares.t1 c
RIGHT JOIN sigaweb.web_resposta_avaliacao w
ON w.id=c.id_web_resposta_avaliacao);

/*aletrar nome da coluna modificada*/
ALTER TABLE t2 CHANGE nome resposta_avaliacao VARCHAR(50);
ALTER TABLE t2 CHANGE id_web_resposta_avaliacao id_resposta_avaliacao VARCHAR(50);
/*Alterar nome da tabela*/
RENAME TABLE t2 TO resposta_avaliacao;
/*vizualizar tabela*/
SELECT * FROM resposta_avaliacao;

/*TABELA PRIORIDADE*/
/*vizualizar tabela*/
SELECT * FROM sigaweb.x_prioridade;

/*Inserção dos dados que faltam: unidade e tipo de prioridade no atendimento*/
/*adição dos dados referentes a UNIDADE - nome da unidade*/
CREATE TABLE t1 AS(SELECT c.id, c.id_web_unidade, w.nome, c.id_web_prioridade, id_net_prioridade
FROM sigaweb.x_prioridade c
RIGHT JOIN sigaweb.web_unidade w
ON w.id=c.id_web_unidade);
/*vizualizar tabela*/
SELECT * FROM t1;
/*aletrar nome da coluna modificada*/
ALTER TABLE t1 CHANGE nome unidade VARCHAR(30);
ALTER TABLE t1 CHANGE id_web_unidade id_unidade VARCHAR(30);

/*adição dos dados referentes a id_prioridade*/
CREATE TABLE t2 AS(SELECT c.id, c.id_unidade, c.unidade, c.id_web_prioridade, w.nome, c.id_net_prioridade
FROM  tabelas_complementares.t1 c
RIGHT JOIN sigaweb.web_prioridade w
ON w.id=c.id_web_prioridade);

/*aletrar nome da coluna modificada*/
ALTER TABLE t2 CHANGE nome prioridade VARCHAR(50);
ALTER TABLE t2 CHANGE id_web_prioridade id_prioridade VARCHAR(50);
/*Alterar nome da tabela*/
RENAME TABLE t2 TO prioridade;
/*vizualizar tabela*/
SELECT * FROM prioridade;

/*TABELA PAUSA ATENDIMENTO */
/*vizualizar tabela*/
SELECT * FROM sigaweb.x_pausa_atendimento;

/*Inserção dos dados que faltam: unidade e motivo de pausa no atendimento*/
/*adição dos dados referentes a UNIDADE - nome da unidade*/
CREATE TABLE t1 AS(SELECT c.id, c.id_web_unidade, w.nome, c.id_web_pausa_atendimento, id_net_pausa_atendimento
FROM sigaweb.x_pausa_atendimento c
RIGHT JOIN sigaweb.web_unidade w
ON w.id=c.id_web_unidade);
/*vizualizar tabela*/
SELECT * FROM t1;
/*aletrar nome da coluna modificada*/
ALTER TABLE t1 CHANGE nome unidade VARCHAR(30);
ALTER TABLE t1 CHANGE id_web_unidade id_unidade VARCHAR(30);

/*adição dos dados referentes a id_prioridade*/
CREATE TABLE t2 AS(SELECT c.id, c.id_unidade, c.unidade, c.id_web_pausa_atendimento, w.nome, c.id_net_pausa_atendimento
FROM  tabelas_complementares.t1 c
RIGHT JOIN sigaweb.web_pausa_atendimento w
ON w.id=c.id_web_pausa_atendimento);

/*aletrar nome da coluna modificada*/
ALTER TABLE t2 CHANGE nome pausa_atendimento VARCHAR(50);
ALTER TABLE t2 CHANGE id_web_pausa_atendimento id_pausa_atendimento VARCHAR(50);
/*Alterar nome da tabela*/
RENAME TABLE t2 TO pausa_atendimento;
/*vizualizar tabela*/
SELECT * FROM pausa_atendimento;

/*TABELA MOTIVO SUSPENSAO*/
/*vizualizar tabela*/
SELECT * FROM sigaweb.x_motivo_suspensao;

/*Inserção dos dados que faltam: unidade e motivo da suspensão no atendimento*/
/*adição dos dados referentes a UNIDADE - nome da unidade*/
CREATE TABLE t1 AS(SELECT c.id, c.id_web_unidade, w.nome, c.id_web_motivo_suspensao, id_net_motivo_suspensao
FROM sigaweb.x_motivo_suspensao c
RIGHT JOIN sigaweb.web_unidade w
ON w.id=c.id_web_unidade);
/*vizualizar tabela*/
SELECT * FROM t1;
/*aletrar nome da coluna modificada*/
ALTER TABLE t1 CHANGE nome unidade VARCHAR(30);
ALTER TABLE t1 CHANGE id_web_unidade id_unidade VARCHAR(30);

/*adição dos dados referentes a id_motivo_suspensao*/
CREATE TABLE t2 AS(SELECT c.id, c.id_unidade, c.unidade, c.id_web_motivo_suspensao, w.nome, c.id_net_motivo_suspensao
FROM  tabelas_complementares.t1 c
RIGHT JOIN sigaweb.web_motivo_suspensao w
ON w.id=c.id_web_motivo_suspensao);

/*aletrar nome da coluna modificada*/
ALTER TABLE t2 CHANGE nome motivo_suspensao VARCHAR(50);
ALTER TABLE t2 CHANGE id_web_motivo_suspensao id_motivo_suspensao VARCHAR(50);
/*Alterar nome da tabela*/
RENAME TABLE t2 TO motivo_suspensao;
/*vizualizar tabela*/
SELECT * FROM motivo_suspensao;

/*TABELA ATIVIDADE*/
/*vizualizar tabela*/
SELECT * FROM sigaweb.x_atividade;

/*Inserção dos dados que faltam: unidade e tipo de serviço/atividade*/
/*adição dos dados referentes a UNIDADE - nome da unidade*/
CREATE TABLE t1 AS(SELECT c.id, c.id_web_unidade, w.nome, c.id_web_atividade, id_net_atividade
FROM sigaweb.x_atividade c
RIGHT JOIN sigaweb.web_unidade w
ON w.id=c.id_web_unidade);
/*vizualizar tabela*/
SELECT * FROM t2;
/*aletrar nome da coluna modificada*/
ALTER TABLE t1 CHANGE nome unidade VARCHAR(30);
ALTER TABLE t1 CHANGE id_web_unidade id_unidade VARCHAR(30);

/*adição dos dados referentes a id_motivo_suspensao*/
CREATE TABLE t2 AS(SELECT c.id, c.id_unidade, c.unidade, c.id_web_atividade, w.nome, c.id_net_atividade
FROM  tabelas_complementares.t1 c
RIGHT JOIN sigaweb.web_atividade w
ON w.id=c.id_web_atividade);

/*aletrar nome da coluna modificada*/
ALTER TABLE t2 CHANGE nome atividade VARCHAR(100);
ALTER TABLE t2 CHANGE id_web_atividade id_atividade VARCHAR(100);
/*Alterar nome da tabela*/
RENAME TABLE t2 TO atividade;
/*vizualizar tabela*/
SELECT * FROM atividade;