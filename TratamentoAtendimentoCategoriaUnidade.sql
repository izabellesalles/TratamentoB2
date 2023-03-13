/*QUERY PARA TRATAMENTO DOS DADOS atendimento_categoria_unidade*/
/*VIZUALIZAÇÃO TABELA*/
SELECT * FROM sigaweb.c_at_cat;

/*CRIAÇÃO DA TABELA 'c_at_cat' NO BANCO 'siganet1'*/
/*TABELA REFERENTE A ATENDIMENTOS SEPARADOS POR CATEGORIA/UNIDADE*/
    USE siganet1;
	CREATE TABLE atendimento_categoria_unidade (id INT UNSIGNED,
							dia DATE, 
                            id_categoria_unidade SMALLINT UNSIGNED,
                            unidade VARCHAR(30),
                            atedimentos INT UNSIGNED,
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

/*INSERÇÃO DOS DADOS NA TABELA c_at_cat do banco siganet1*/

INSERT INTO atendimento_categoria_unidade (id, dia, id_categoria_unidade, atedimentos, ta, t_atendimento_minimo, t_atendimento_maximo, esperas, t_espera, t_espera_minimo, t_espera_maximo, deslocamentos, t_deslocamento, t_deslocamento_minimo, t_deslocamento_maximo)
SELECT  id, dia, id_x_categoria, atendimentos, ta, ta_minimo, ta_maximo, esperas, te, te_minimo, te_maximo, deslocamentos, td, td_minimo, td_maximo
FROM sigaweb.c_at_cat;

/*VIZUALIZAÇÃO DA TABELA atendimento_categoria_unidade*/
SELECT * FROM siganet1.atendimento_categoria_unidade;

/*INSERÇÃO DOS DADOS DA COLUNA UNIDADE*/
UPDATE atendimento_categoria_unidade
SET unidade = 'TAGUATINGA' WHERE id_categoria_unidade = 2;
UPDATE atendimento_categoria_unidade
SET unidade = 'SOBRADINHO' WHERE id_categoria_unidade = 3;
UPDATE atendimento_categoria_unidade
SET unidade = 'CEILANDIA' WHERE id_categoria_unidade = 4;  
UPDATE atendimento_categoria_unidade
SET unidade = 'RODIARIA DO PLANO' WHERE id_categoria_unidade = 5; 
UPDATE atendimento_categoria_unidade
SET unidade = 'GAMA' WHERE id_categoria_unidade = 6; 
UPDATE atendimento_categoria_unidade
SET unidade = 'RIACHO FUNDO' WHERE id_categoria_unidade = 7;                       