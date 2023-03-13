/*QUERY PARA TRATAMENTO DOS DADOS atendimento_prioridade*/
/*VIZUALIZAÇÃO TABELA*/
SELECT * FROM sigaweb.c_at_prio;

/*CRIAÇÃO DA TABELA 'atendimento_prioridade' NO BANCO 'siganet1'*/
    USE siganet1;
	CREATE TABLE atendimento_prioridade (id INT UNSIGNED,
							dia DATE, 
                            id_prioridade SMALLINT UNSIGNED,
                            prioridade VARCHAR(30),
                            atendimentos INT UNSIGNED,
                            ta INT UNSIGNED,
                            t_atendimento_minimo INT UNSIGNED,
                            t_atendimento_maximo INT UNSIGNED,
                            esperas INT UNSIGNED,
                            t_espera INT UNSIGNED,
                            t_espera_minimo INT UNSIGNED,
                            t_espera_maximo INT UNSIGNED,
                            deslocamentos INT UNSIGNED,
                            t_deslocamento INT UNSIGNED,
                            t_deslocamento_minimo INT UNSIGNED,
                            t_deslocamento_maximo INT UNSIGNED);

/*INSERÇÃO DOS DADOS NA TABELA c_at_prio do banco siganet1*/

INSERT INTO atendimento_prioridade (id, dia, id_prioridade, atendimentos, ta, t_atendimento_minimo, t_atendimento_maximo, esperas, t_espera, t_espera_minimo, t_espera_maximo, deslocamentos, t_deslocamento, t_deslocamento_minimo, t_deslocamento_maximo)
SELECT  id, dia, id_x_prioridade, atendimentos, ta, ta_minimo, ta_maximo, esperas, te, te_minimo, te_maximo, deslocamentos, td, td_minimo, td_maximo
FROM sigaweb.c_at_prio;

/*VIZUALIZAÇÃO DA TABELA atendimento_prioridade*/
SELECT * FROM siganet1.atendimento_prioridade;

/*VIZUALIZAR TABELA tabelas_complementres_prioridade*/
SELECT*FROM tabelas_complementares.prioridade;

/*INSERÇÃO DOS DADOS REFERENTES A PRIORIDADE TABELA PRINCIPAL DE PRIORIDADE*/
USE siganet1;
UPDATE atendimento_prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 5;
UPDATE atendimento_prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 6;
UPDATE atendimento_prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 7;
UPDATE atendimento_prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 8;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 9;
UPDATE atendimento_prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 10;
UPDATE atendimento_prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 11;
UPDATE atendimento_prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 12;
UPDATE atendimento_prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 13;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 14;
UPDATE atendimento_prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 15;
UPDATE atendimento_prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 16;
UPDATE atendimento_prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 17;
UPDATE atendimento_prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 18;
UPDATE atendimento_prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 19;
UPDATE atendimento_prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 20;
UPDATE atendimento_prioridade
SET prioridade = 'SIMPLES-Normal' WHERE id_prioridade = 21;
UPDATE atendimento_prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 22;
UPDATE atendimento_prioridade
SET prioridade = 'REC-REV' WHERE id_prioridade = 229;
UPDATE atendimento_prioridade
SET prioridade = 'Resultado/CNIS-Normal' WHERE id_prioridade = 230;
UPDATE atendimento_prioridade
SET prioridade = 'SIMPLES-Preferencial' WHERE id_prioridade = 231;
UPDATE atendimento_prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 232;
UPDATE atendimento_prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 233;
UPDATE atendimento_prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 234;
UPDATE atendimento_prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 235;
UPDATE atendimento_prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 236;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 237;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 238;
UPDATE atendimento_prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 239;
UPDATE atendimento_prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 240;
UPDATE atendimento_prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 241;
UPDATE atendimento_prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 242;
UPDATE atendimento_prioridade
SET prioridade = 'Especial' WHERE id_prioridade = 243;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 244;
UPDATE atendimento_prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 245;
UPDATE atendimento_prioridade
SET prioridade = 'Resultado/CNIS-Preferencial' WHERE id_prioridade = 246;
UPDATE atendimento_prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 247;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 248;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 249;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 250;
UPDATE atendimento_prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 251;
UPDATE atendimento_prioridade
SET prioridade = 'Especial' WHERE id_prioridade = 252;
UPDATE atendimento_prioridade
SET prioridade = 'Retorno/Preferencial' WHERE id_prioridade = 253;
UPDATE atendimento_prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 254;
UPDATE atendimento_prioridade
SET prioridade = 'Agendado' WHERE id_prioridade = 255;
UPDATE atendimento_prioridade
SET prioridade = 'TempoEsperaVencido' WHERE id_prioridade = 256;
UPDATE atendimento_prioridade
SET prioridade = 'TempoFilaVencido' WHERE id_prioridade = 257;
UPDATE atendimento_prioridade
SET prioridade = 'Rechamada' WHERE id_prioridade = 258;
UPDATE atendimento_prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 259;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 260;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 261;
UPDATE atendimento_prioridade
SET prioridade = 'SIMPLES-Normal' WHERE id_prioridade = 262;
UPDATE atendimento_prioridade
SET prioridade = 'Especial' WHERE id_prioridade = 263;
UPDATE atendimento_prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 264;
UPDATE atendimento_prioridade
SET prioridade = 'SIMPLES-Normal' WHERE id_prioridade = 265;
UPDATE atendimento_prioridade
SET prioridade = 'Retorno' WHERE id_prioridade = 266;
UPDATE atendimento_prioridade
SET prioridade = 'Agendamento' WHERE id_prioridade = 267;
UPDATE atendimento_prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 268;
UPDATE atendimento_prioridade
SET prioridade = 'Normal' WHERE id_prioridade = 269;
UPDATE atendimento_prioridade
SET prioridade = 'Especial' WHERE id_prioridade = 270;
UPDATE atendimento_prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 271;
UPDATE atendimento_prioridade
SET prioridade = 'Preferencial' WHERE id_prioridade = 272;

/*VIZUALIZAÇÃO TABELA atendimento_prioridade*/
SELECT * FROM siganet1.atendimento_prioridade