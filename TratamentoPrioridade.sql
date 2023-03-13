/* QUERY PARA TRATAMENTO DOS DADOS REFERENTE A TABELA x_prioridade.
INSERIR DADOS REFERENTE A UNIDADE, PRIORIDADE E NET PRIORIDADE*/

/*VIZUALIZAR TABELA x_prioridade DO BANCO ORIGINAL*/
SELECT * FROM sigaweb.x_prioridade;

/*CRIAR BANCO DE DADOS PARA INSERIR TABELAS TEMPORARIAS*/
CREATE DATABASE tabelas_complementares;

/*CRIAR TABELA PRIORIDADE*/
USE tabelas_complementares;
CREATE TABLE prioridade (id INT,
						id_unidade INT,
                        unidade VARCHAR(30),
                        id_prioridade INT,
                        prioridade VARCHAR(50),
                        id_net_prioridade INT,
                        net_prioridade VARCHAR(30)
                        );
/*CONTAGEM NUMERO DE LINHAS PARA VERIFICAR SE TODOS OS DADOS FORAM COPIADOS*/

/*INSERIR DADOS DA TABELA x_prioridade DE sigaweb PARA prioridade DE tabelas_complementares*/
INSERT INTO prioridade (id, id_unidade, id_prioridade, id_net_prioridade)
SELECT id, id_web_unidade, id_web_prioridade, id_net_prioridade
FROM sigaweb.x_prioridade;

/*VIZUALIZAR TABELA prioridade*/
SELECT * FROM prioridade;

/*INSERÇÃO DOS DADOS REFERENTES A UNIDADE*/
use tabelas_complementares;
update prioridade
set unidade = 'TAGUATINGA' where id_unidade = 8;
update prioridade
set unidade = 'SOBRADINHO' where id_unidade = 9;
update prioridade
set unidade = 'CEILANDIA' where id_unidade = 10;
update prioridade
set unidade = 'RODOVIARIA' where id_unidade = 11;
update prioridade
set unidade = 'GAMA' where id_unidade = 12;
update prioridade
set unidade = 'RIACHO FUNDO' where id_unidade = 13;
delete  sigaweb.web_senha;
/*INSERIR DADOS REFERENTES A PRIORIDADE*/
UPDATE prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 10;
UPDATE prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 11;
UPDATE prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 12;
UPDATE prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 13;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 14;
UPDATE prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 15;
UPDATE prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 16;
UPDATE prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 17;
UPDATE prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 18;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 19;
UPDATE prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 20;
UPDATE prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 21;
UPDATE prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 22;
UPDATE prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 23;
UPDATE prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 24;
UPDATE prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 25;
UPDATE prioridade
SET prioridade = 'SIMPLES-Normal' WHERE id_prioridade = 26;
UPDATE prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 27;
UPDATE prioridade
SET prioridade = 'REC-REV' WHERE id_prioridade = 234;
UPDATE prioridade
SET prioridade = 'Resultado/CNIS-Normal' WHERE id_prioridade = 235;
UPDATE prioridade
SET prioridade = 'SIMPLES-Preferencial' WHERE id_prioridade = 236;
UPDATE prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 237;
UPDATE prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 238;
UPDATE prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 239;
UPDATE prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 240;
UPDATE prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 241;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 242;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 243;
UPDATE prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 244;
UPDATE prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 245;
UPDATE prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 246;
UPDATE prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 247;
UPDATE prioridade
SET prioridade = 'Especial' WHERE id_prioridade = 248;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 249;
UPDATE prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 250;
UPDATE prioridade
SET prioridade = 'Resultado/CNIS-Preferencial' WHERE id_prioridade = 251;
UPDATE prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 252;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 253;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 254;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 255;
UPDATE prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 256;
UPDATE prioridade
SET prioridade = 'Especial' WHERE id_prioridade = 257;
UPDATE prioridade
SET prioridade = 'Retorno/Preferencial' WHERE id_prioridade = 258;
UPDATE prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 259;
UPDATE prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 260;
UPDATE prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 261;
UPDATE prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 262;
UPDATE prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 263;
UPDATE prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 264;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 265;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 266;
UPDATE prioridade
SET prioridade = 'SIMPLES-Normal' WHERE id_prioridade = 267;
UPDATE prioridade
SET prioridade = 'Especial' WHERE id_prioridade = 268;
UPDATE prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 269;
UPDATE prioridade
SET prioridade = 'SIMPLES-Normal' WHERE id_prioridade = 270;
UPDATE prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 271;
UPDATE prioridade
SET prioridade = 'Agendamento' WHERE id_prioridade = 272;
UPDATE prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 273;
UPDATE prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 274;
UPDATE prioridade
SET prioridade = 'Especial' WHERE id_prioridade = 275;
UPDATE prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 276;
UPDATE prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 277;

/*INSERÇÃO DADOS net_prioridade*/
USE tabelas_complementares;
UPDATE prioridade
SET net_prioridade = 'Agendado' WHERE id_net_prioridade = 0;
UPDATE prioridade
SET net_prioridade = 'TemporEsperaVencido' WHERE id_net_prioridade = 256;
UPDATE prioridade
SET net_prioridade = 'TempoFilaVencido' WHERE id_net_prioridade = 512;
UPDATE prioridade
SET net_prioridade = 'Rechamada' WHERE id_net_prioridade = 768;
UPDATE prioridade
SET net_prioridade = 'Retorno' WHERE id_net_prioridade = 1024 AND id_unidade = 8;
UPDATE prioridade
SET net_prioridade = 'Preferencial' WHERE id_net_prioridade = 1024 AND id_unidade = 9;
UPDATE prioridade
SET net_prioridade = 'SIMPLES-Normal' WHERE id_net_prioridade = 1024 AND id_unidade = 10;
UPDATE prioridade
SET net_prioridade = 'Preferencial' WHERE id_net_prioridade = 1024 AND id_unidade = 11;
UPDATE prioridade
SET net_prioridade = 'Especial' WHERE id_net_prioridade = 1024 AND id_unidade = 12;
UPDATE prioridade
SET net_prioridade = 'Retorno' WHERE id_net_prioridade = 1024 AND id_unidade = 13;
UPDATE prioridade
SET net_prioridade = 'REC-REV' WHERE id_net_prioridade = 1280 AND id_unidade = 10;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 1280 AND id_unidade = 11;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 1280 AND id_unidade = 9;
UPDATE prioridade
SET net_prioridade = 'Especial' WHERE id_net_prioridade = 1280 AND id_unidade = 8;
UPDATE prioridade
SET net_prioridade = 'Retorno' WHERE id_net_prioridade = 1280 AND id_unidade = 12;
UPDATE prioridade
SET net_prioridade = 'Especial' WHERE id_net_prioridade = 1280 AND id_unidade = 13;
UPDATE prioridade
SET net_prioridade = 'SIMPLES-Preferencial' WHERE id_net_prioridade = 1536 AND id_unidade = 10;
UPDATE prioridade
SET net_prioridade = 'Retorno' WHERE id_net_prioridade = 1536 AND id_unidade = 11;
UPDATE prioridade
SET net_prioridade = 'Preferencial' WHERE id_net_prioridade = 1536 AND id_unidade = 12;
UPDATE prioridade
SET net_prioridade = 'Preferencial' WHERE id_net_prioridade = 1536 AND id_unidade = 13;
UPDATE prioridade
SET net_prioridade = 'Preferencial' WHERE id_net_prioridade = 1536 AND id_unidade = 8;
UPDATE prioridade
SET net_prioridade = 'Resultado/CNIS-Preferencial' WHERE id_net_prioridade = 1792 AND id_unidade = 10;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 1792 AND id_unidade = 8;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 1792 AND id_unidade = 13;
UPDATE prioridade
SET net_prioridade = 'Agendamento' WHERE id_net_prioridade = 1792 AND id_unidade = 11;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 1792 AND id_unidade = 12;
UPDATE prioridade
SET net_prioridade = 'Resultado/CNIS-Normal' WHERE id_net_prioridade = 2048 AND id_unidade = 10;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 2048 AND id_unidade = 11;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 2048 AND id_unidade = 12;
UPDATE prioridade
SET net_prioridade = 'Preferencial' WHERE id_net_prioridade = 2048 AND id_unidade = 8;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 2304 AND id_unidade = 8;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 2304 AND id_unidade = 9;
UPDATE prioridade
SET net_prioridade = 'Preferencial' WHERE id_net_prioridade = 2304 AND id_unidade = 10;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 2304 AND id_unidade = 13;
UPDATE prioridade
SET net_prioridade = 'Normal' WHERE id_net_prioridade = 2560;
UPDATE prioridade
SET net_prioridade = 'Rechamada' WHERE id_net_prioridade = 2816 AND id_unidade = 9;
UPDATE prioridade
SET net_prioridade = 'Retorno/Preferencial' WHERE id_net_prioridade = 2816 AND id_unidade = 8;
UPDATE prioridade
SET net_prioridade = 'Retorno' WHERE id_net_prioridade = 2816 AND id_unidade = 10;
UPDATE prioridade
SET net_prioridade = 'Especial' WHERE id_net_prioridade = 3072 AND id_unidade = 10;
UPDATE prioridade
SET net_prioridade = 'Simples-Normal' WHERE id_net_prioridade = 3328 AND id_unidade = 10;
UPDATE prioridade
SET net_prioridade = 'Rechamada' WHERE id_net_prioridade = 3584 AND id_unidade = 8;
UPDATE prioridade
SET net_prioridade = 'Simples-Normal' WHERE id_net_prioridade = 3584 AND id_unidade = 10;

/*VIZUALIZAR TABELA tabelas_complementres_prioridade*/
SELECT*FROM tabelas_complementares.prioridade;