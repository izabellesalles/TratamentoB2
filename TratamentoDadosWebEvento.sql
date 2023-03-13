/*AUTOR: IZABELLE SALLES*/
/*Tratamento dos dados tabelas sigaweb web_evento: pausa_atendimento, usuario, rechamada, avaliacao*/

/*TABELA WEB_EVENTO_PAUSA_ATENDIMENTO*/
/*visulizar tabela principal*/
SELECT * FROM sigaweb.web_evento_pausa_atendimento;

/*Inserção dos dados que faltam*/
/*inserir dados id_usuario/usuario*/
USE sigaweb1;
CREATE TABLE t3 AS(SELECT c.id, c.id_x_usuario, w.Usuario, c.id_x_guiche, c.id_x_motivo_pausa, c.id_Web_senha, c.horario, c.id_web_operacao, c.tempo 
FROM sigaweb.web_evento_pausa_atendimento c
RIGHT JOIN tabelas_complementares.usuario w
ON w.id_usuario=c.id_x_usuario);
/*apagar dados vazios*/
USE sigaweb1;
CREATE TABLE t_web_epa1 (id INT,
						id_x_usuario INT,
                        Usuario VARCHAR(100),
                        id_x_guiche INT,
						id_x_motivo_pausa INT,
                        id_web_Senha INT,
                        horario DATETIME,
                        id_web_operacao INT,
                        tempo INT
                        );

/*INSERIR DADOS DA TABELA x_prioridade DE sigaweb PARA prioridade DE tabelas_complementares*/
INSERT INTO t_web_epa1 (id, id_x_usuario, Usuario, id_x_guiche, id_x_motivo_pausa, id_web_Senha, horario, id_web_operacao, tempo)
SELECT id, id_x_usuario, Usuario, id_x_guiche, id_x_motivo_pausa, id_Web_senha, horario, id_web_operacao, tempo
FROM sigaweb1.t2
WHERE id IS NOT NULL AND tempo IS NOT NULL;
/*vizualizar tabela*/
SELECT * FROM sigaweb1.t_web_epa1;


/*inserir dados id_guiche/nome guiche*/
CREATE TABLE t4 AS(SELECT c.id, c.id_x_usuario, c.Usuario, c.id_x_guiche, w.nome, c.id_x_motivo_pausa, c.id_Web_senha, c.horario, c.id_web_operacao, c.tempo 
FROM sigaweb1.t_web_epa1 c
RIGHT JOIN sigaweb.web_guiche w
ON w.id=c.id_x_guiche
);
/*apagar dados vazios*/
USE sigaweb1;
CREATE TABLE t_web_epa (id INT,
						id_x_usuario INT,
                        usuario VARCHAR(100),
                        id_x_guiche INT,
                        nome_guiche INT,
						id_x_motivo_pausa INT,
                        id_web_senha INT,
                        horario DATETIME,
                        id_web_operacao INT,
                        tempo INT
                        );

/*INSERIR DADOS DA TABELA x_prioridade DE sigaweb PARA prioridade DE tabelas_complementares*/
INSERT INTO t_web_epa (id, id_x_usuario, usuario, id_x_guiche, nome_guiche, id_x_motivo_pausa, id_web_senha, horario, id_web_operacao, tempo)
SELECT id, id_x_usuario, Usuario, id_x_guiche, nome, id_x_motivo_pausa, id_Web_senha, horario, id_web_operacao, tempo
FROM sigaweb1.t4
WHERE id IS NOT NULL AND tempo IS NOT NULL;
/*vizualizar tabela*/
SELECT * FROM sigaweb1.t_web_epa;

/*inserir dados id_x_motivo_pausa/motivo pausa*/
CREATE TABLE t5 AS(SELECT c.id, c.id_x_usuario, c.Usuario, c.id_x_guiche, c.nome_guiche, c.id_x_motivo_pausa, w.nome, c.id_Web_senha, c.horario, c.id_web_operacao, c.tempo 
FROM sigaweb1.t_web_epa c
RIGHT JOIN sigaweb.web_pausa_atendimento w
ON w.id=c.id_x_motivo_pausa
);
SELECT * FROM sigaweb1.t5;
/*apagar dados vazios*/
USE sigaweb1;
CREATE TABLE t_web_epa1 (id INT,
						id_x_usuario INT,
                        usuario VARCHAR(100),
                        id_x_guiche INT,
                        nome_guiche INT,
						id_x_motivo_pausa INT,
                        motivo_pausa VARCHAR(30),
                        id_web_senha INT,
                        horario DATETIME,
                        id_web_operacao INT,
                        tempo INT
                        );

/*INSERIR DADOS DA TABELA x_prioridade DE sigaweb PARA prioridade DE tabelas_complementares*/
INSERT INTO t_web_epa1 (id, id_x_usuario, usuario, id_x_guiche, nome_guiche, id_x_motivo_pausa, motivo_pausa, id_web_senha, horario, id_web_operacao, tempo)
SELECT id, id_x_usuario, Usuario, id_x_guiche, nome_guiche, id_x_motivo_pausa, nome, id_Web_senha, horario, id_web_operacao, tempo
FROM sigaweb1.t5
WHERE id IS NOT NULL AND tempo IS NOT NULL;
/*vizualizar tabela*/
SELECT * FROM sigaweb1.t_web_epa1;

/*inserir dados id_web_operacao/operacao*/

USE sigaweb1;
CREATE TABLE evento_pausa_atendimento(id INT,
						id_usuario INT,
                        usuario VARCHAR(100),
                        id_guiche INT,
                        nome_guiche INT,
						id_motivo_pausa INT,
                        motivo_pausa VARCHAR(30),
                        id_senha INT,
                        horario DATETIME,
                        id_operacao INT,
                        operacao VARCHAR(100),
                        tempo INT
                        );

/*INSERIR DADOS DA TABELA x_prioridade DE sigaweb PARA prioridade DE tabelas_complementares*/
INSERT INTO evento_pausa_atendimento (id, id_usuario, usuario, id_guiche, nome_guiche, id_motivo_pausa, motivo_pausa, id_senha, horario, id_operacao, tempo)
SELECT id, id_x_usuario, Usuario, id_x_guiche, nome_guiche, id_x_motivo_pausa, motivo_pausa, id_Web_senha, horario, id_web_operacao, tempo
FROM sigaweb1.t_web_epa1;
ALTER TABLE evento_pausa_atendimento
DROP id_operacao;
ALTER TABLE evento_pausa_atendimento
DROP Operacao;
/*vizualizar tabela*/
SELECT * FROM sigaweb1. evento_pausa_atendimento;

/*TABELA WEB_EVENTO_USUARIO*/
/*visulizar tabela principal*/
SELECT * FROM sigaweb.web_evento_usuario;

/*Inserção dos dados que faltam*/
/*inserir dados id_usuario/usuario*/
USE sigaweb1;
CREATE TABLE t3 AS(SELECT c.id, c.id_x_usuario, w.Usuario, c.id_x_guiche, c.id_x_motivo_suspensao, c.id_web_operacao,c.horario, c.tempo 
FROM sigaweb.web_evento_usuario c
RIGHT JOIN tabelas_complementares.usuario w
ON w.id_usuario=c.id_x_usuario);
/*apagar dados vazios*/
USE sigaweb1;
CREATE TABLE t_web_epa1 (id INT,
						id_x_usuario INT,
                        Usuario VARCHAR(100),
                        id_x_guiche INT,
						id_x_motivo_pausa INT,
                        id_web_Senha INT,
                        horario DATETIME,
                        id_web_operacao INT,
                        tempo INT
                        );

/*INSERIR DADOS DA TABELA x_prioridade DE sigaweb PARA prioridade DE tabelas_complementares*/
INSERT INTO t_web_epa1 (id, id_x_usuario, Usuario, id_x_guiche, id_x_motivo_pausa, id_web_Senha, horario, id_web_operacao, tempo)
SELECT id, id_x_usuario, Usuario, id_x_guiche, id_x_motivo_pausa, id_Web_senha, horario, id_web_operacao, tempo
FROM sigaweb1.t2
WHERE id IS NOT NULL AND tempo IS NOT NULL;
/*vizualizar tabela*/
SELECT * FROM sigaweb1.t_web_epa1;


