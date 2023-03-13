/*QUERY PARA MODIFICAR NOME DAS COLUNAS E DAS TABELAS*/

/*C_AT_CAT - ATENDIMENTO_CATEGORIA*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_at_cat;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_at_cat CHANGE id_x_categoria id_categoria INT;
ALTER TABLE c_at_cat CHANGE ta tempo_atendimento INT;
ALTER TABLE c_at_cat CHANGE ta_minimo tempo_atendimento_minimo INT;
ALTER TABLE c_at_cat CHANGE ta_maximo tempo_atendimento_maximo INT;
ALTER TABLE c_at_cat CHANGE te tempo_espera INT;
ALTER TABLE c_at_cat CHANGE te_minimo tempo_espera_minimo INT;
ALTER TABLE c_at_cat CHANGE te_maximo tempo_espera_maximo INT;
ALTER TABLE c_at_cat CHANGE td tempo_deslocamentos INT;
ALTER TABLE c_at_cat CHANGE td_minimo tempo_deslocamento_minimo INT;
ALTER TABLE c_at_cat CHANGE td_maximo tempo_deslocamento_maximo INT;
/*Alterar nome da tabela*/
RENAME TABLE c_at_cat TO atendimento_categoria;
/*vizualizar tabela*/
SELECT * FROM atendimento_categoria;


/*C_AT_CAT_SERV - ATENDIMENTO_CATEGORIA_SERVICO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_at_cat_serv;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_at_cat_serv CHANGE id_x_categoria id_categoria INT;
ALTER TABLE c_at_cat_serv CHANGE id_x_servico id_servico INT;
ALTER TABLE c_at_cat_serv CHANGE ta tempo_atendimento INT;
ALTER TABLE c_at_cat_serv CHANGE ta_minimo tempo_atendimento_minimo INT;
ALTER TABLE c_at_cat_serv CHANGE ta_maximo tempo_atendimento_maximo INT;
ALTER TABLE c_at_cat_serv CHANGE te tempo_espera INT;
ALTER TABLE c_at_cat_serv CHANGE te_minimo tempo_espera_minimo INT;
ALTER TABLE c_at_cat_serv CHANGE te_maximo tempo_espera_maximo INT;
ALTER TABLE c_at_cat_serv CHANGE td tempo_deslocamentos INT;
ALTER TABLE c_at_cat_serv CHANGE td_minimo tempo_deslocamento_minimo INT;
ALTER TABLE c_at_cat_serv CHANGE td_maximo tempo_deslocamento_maximo INT;
/*Alterar nome da tabela*/
RENAME TABLE c_at_cat_serv TO atendimento_categoria_servico;
/*vizualizar tabela*/
SELECT * FROM atendimento_categoria_servico;

/*C_AT_PRIO - ATENDIMENTO_PRIORIDADE*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb.c_at_prio;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_at_prio CHANGE id_x_categoria id_categoria INT;
ALTER TABLE c_at_prio CHANGE id_x_servico id_servico INT;
ALTER TABLE c_at_prio CHANGE ta tempo_atendimento INT;
ALTER TABLE c_at_prio CHANGE ta_minimo tempo_atendimento_minimo INT;
ALTER TABLE c_at_prio CHANGE ta_maximo tempo_atendimento_maximo INT;
ALTER TABLE c_at_prio CHANGE te tempo_espera INT;
ALTER TABLE c_at_prio CHANGE te_minimo tempo_espera_minimo INT;
ALTER TABLE c_at_prio CHANGE te_maximo tempo_espera_maximo INT;
ALTER TABLE c_at_prio CHANGE td tempo_deslocamentos INT;
ALTER TABLE c_at_prio CHANGE td_minimo tempo_deslocamento_minimo INT;
ALTER TABLE c_at_prio CHANGE td_maximo tempo_deslocamento_maximo INT;
/*Alterar nome da tabela*/
RENAME TABLE c_at_prio TO atendimento_categoria_servico;
/*vizualizar tabela*/
SELECT * FROM atendimento_prioridade;

/*C_AT_SEC - ATENDIMENTO_SECAO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_at_sec;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_at_sec CHANGE id_x_secao id_secao INT;
ALTER TABLE c_at_sec CHANGE ta t_atendimento INT;
ALTER TABLE c_at_sec CHANGE ta_minimo t_atendimento_minimo INT;
ALTER TABLE c_at_sec CHANGE ta_maximo t_atendimento_maximo INT;
ALTER TABLE c_at_sec CHANGE te t_espera INT;
ALTER TABLE c_at_sec CHANGE te_minimo t_espera_minimo INT;
ALTER TABLE c_at_sec CHANGE te_maximo t_espera_maximo INT;
ALTER TABLE c_at_sec CHANGE td t_deslocamentos INT;
ALTER TABLE c_at_sec CHANGE td_minimo t_deslocamento_minimo INT;
ALTER TABLE c_at_sec CHANGE td_maximo t_deslocamento_maximo INT;
/*Alterar nome da tabela*/
RENAME TABLE c_at_sec TO atendimento_secao;
/*vizualizar tabela*/
SELECT * FROM atendimento_secao;

/*C_AT_SERV - ATENDIMENTO_SERVICO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_at_serv;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_at_serv CHANGE id_x_servico id_servico INT;
ALTER TABLE c_at_serv CHANGE ta t_atendimento INT;
ALTER TABLE c_at_serv CHANGE ta_minimo t_atendimento_minimo INT;
ALTER TABLE c_at_serv CHANGE ta_maximo t_atendimento_maximo INT;
ALTER TABLE c_at_serv CHANGE te t_espera INT;
ALTER TABLE c_at_serv CHANGE te_minimo t_espera_minimo INT;
ALTER TABLE c_at_serv CHANGE te_maximo t_espera_maximo INT;
ALTER TABLE c_at_serv CHANGE td t_deslocamentos INT;
ALTER TABLE c_at_serv CHANGE td_minimo t_deslocamento_minimo INT;
ALTER TABLE c_at_serv CHANGE td_maximo t_deslocamento_maximo INT;
/*Alterar nome da tabela*/
RENAME TABLE c_at_serv TO atendimento_servico;
/*vizualizar tabela*/
SELECT * FROM atendimento_servico;


/*C_AT_UN- ATENDIMENTO_UNINDADE*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_at_un;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_at_un CHANGE id_web_unidade id_unidade INT;
ALTER TABLE c_at_un CHANGE ta t_atendimento INT;
ALTER TABLE c_at_un CHANGE ta_minimo t_atendimento_minimo INT;
ALTER TABLE c_at_un CHANGE ta_maximo t_atendimento_maximo INT;
ALTER TABLE c_at_un CHANGE te t_espera INT;
ALTER TABLE c_at_un CHANGE te_minimo t_espera_minimo INT;
ALTER TABLE c_at_un CHANGE te_maximo t_espera_maximo INT;
ALTER TABLE c_at_un CHANGE td t_deslocamentos INT;
ALTER TABLE c_at_un CHANGE td_minimo t_deslocamento_minimo INT;
ALTER TABLE c_at_un CHANGE td_maximo t_deslocamento_maximo INT;
/*Alterar nome da tabela*/
RENAME TABLE c_at_un TO atendimento_unidade;
/*vizualizar tabela*/
SELECT * FROM atendimento_unidade;


/*C_AT_USUARIO- ATENDIMENTO_USUARIO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_at_usu;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_at_usu CHANGE id_x_usuario id_usuario INT;
ALTER TABLE c_at_usu CHANGE ta t_atendimento INT;
ALTER TABLE c_at_usu CHANGE ta_minimo t_atendimento_minimo INT;
ALTER TABLE c_at_usu CHANGE ta_maximo t_atendimento_maximo INT;
ALTER TABLE c_at_usu CHANGE te t_espera INT;
ALTER TABLE c_at_usu CHANGE te_minimo t_espera_minimo INT;
ALTER TABLE c_at_usu CHANGE te_maximo t_espera_maximo INT;
ALTER TABLE c_at_usu CHANGE td t_deslocamentos INT;
ALTER TABLE c_at_usu CHANGE td_minimo t_deslocamento_minimo INT;
ALTER TABLE c_at_usu CHANGE td_maximo t_deslocamento_maximo INT;
/*Alterar nome da tabela*/
RENAME TABLE c_at_usu TO atendimento_usuario;
/*vizualizar tabela*/
SELECT * FROM atendimento_usuario;

/*C_AT_USU_SERV- ATENDIMENTO_USUARIO_SERVICO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_at_usu_serv;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_at_usu_serv CHANGE id_x_usuario id_usuario INT;
ALTER TABLE c_at_usu_serv CHANGE id_x_servico id_servico INT;
ALTER TABLE c_at_usu_serv CHANGE ta t_atendimento INT;
ALTER TABLE c_at_usu_serv CHANGE ta_minimo t_atendimento_minimo INT;
ALTER TABLE c_at_usu_serv CHANGE ta_maximo t_atendimento_maximo INT;
ALTER TABLE c_at_usu_serv CHANGE te t_espera INT;
ALTER TABLE c_at_usu_serv CHANGE te_minimo t_espera_minimo INT;
ALTER TABLE c_at_usu_serv CHANGE te_maximo t_espera_maximo INT;
ALTER TABLE c_at_usu_serv CHANGE td t_deslocamentos INT;
ALTER TABLE c_at_usu_serv CHANGE td_minimo t_deslocamento_minimo INT;
ALTER TABLE c_at_usu_serv CHANGE td_maximo t_deslocamento_maximo INT;
/*Alterar nome da tabela*/
RENAME TABLE c_at_usu_serv TO atendimento_usuario_servico;
/*vizualizar tabela*/
SELECT * FROM atendimento_usuario_servico;

/*C_AV_ATV ATEN_USUARIO_SERVICO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_av_atv;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_av_atv CHANGE id_x_atividade id_atividade INT;
ALTER TABLE c_av_atv CHANGE id_avalaicao id_avaliacao INT;
AlTER TABLE sigaweb1.c_av_atv
DROP COLUMN id_x_resposta;

/*Alterar nome da tabela*/
RENAME TABLE c_av_atv TO avaliacao_atividade;
/*vizualizar tabela*/
SELECT * FROM avaliacao_atividade;

/*C_AV_SEC AVALIAÇÃO_SECAO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_av_sec;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_av_sec CHANGE id_x_secao id_secao INT;
ALTER TABLE c_av_sec CHANGE id_x_avaliacao id_avaliacao INT;
AlTER TABLE sigaweb1.c_av_sec
DROP COLUMN id_x_resposta;

/*Alterar nome da tabela*/
RENAME TABLE c_av_sec TO avaliacao_secao;
/*vizualizar tabela*/
SELECT * FROM avaliacao_secao;

/*C_AV_SERV AVALIAÇÃO_SERVICO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_av_sevr;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_av_serv CHANGE id_x_servico id_servico INT;
ALTER TABLE c_av_serv CHANGE id_x_avaliacao id_avaliacao INT;
AlTER TABLE sigaweb1.c_av_serv
DROP COLUMN id_x_resposta;

/*Alterar nome da tabela*/
RENAME TABLE c_av_serv TO avaliacao_servico;
/*vizualizar tabela*/
SELECT * FROM avaliacao_servico;

/*C_AV_UN AVALIAÇÃO_UNIDADE*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_av_un;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_av_un CHANGE id_web_unidade id_unidade INT;
ALTER TABLE c_av_un CHANGE id_x_avaliacao id_avaliacao INT;
AlTER TABLE sigaweb1.c_av_un
DROP COLUMN id_x_resposta;

/*Alterar nome da tabela*/
RENAME TABLE c_av_un TO avaliacao_unidade;
/*vizualizar tabela*/
SELECT * FROM avaliacao_unidade;

/*C_AV_USU AVALIAÇÃO_USUARIO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_av_usu;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_av_usu CHANGE id_x_usuario id_unidade INT;
ALTER TABLE c_av_usu CHANGE id_x_avaliacao id_avaliacao INT;
AlTER TABLE sigaweb1.c_av_usu
DROP COLUMN id_x_resposta;

/*Alterar nome da tabela*/
RENAME TABLE c_av_usu TO avaliacao_usuario;
/*vizualizar tabela*/
SELECT * FROM avaliacao_usuario;

/*C_AV_USU_ATV - AVALIAÇÃO_USUARIO_ATIVIDADE*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.c_av_usu_atv;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE c_av_usu_atv CHANGE id_unidade id_usuario INT;
ALTER TABLE c_av_usu_atv CHANGE id_x_atividade id_atividade INT;
ALTER TABLE c_av_usu_atv CHANGE id_x_avaliacao id_avaliacao INT;
AlTER TABLE sigaweb1.c_av_usu_atv
DROP COLUMN id_x_resposta;

/*Alterar nome da tabela*/
RENAME TABLE c_av_usu_atv TO avaliacao_usuario_atividade;
/*vizualizar tabela*/
SELECT * FROM avaliacao_usuario_atividade;

/*CACHE_DEMANDA_SERVICO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.cache_demanda_servico;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE cache_demanda_servico CHANGE id_web_unidade id_unidade INT;
ALTER TABLE cache_demanda_servico CHANGE id_x_servico id_servico INT;

/*vizualizar tabela*/
SELECT * FROM cache_demanda_servico;

/*CACHE_DEMANDA_UNIDADE*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.cache_demanda_unidade;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE cache_demanda_unidade CHANGE id_web_unidade id_unidade INT;

/*vizualizar tabela*/
SELECT * FROM cache_demanda_unidade;

/*DEMANDA_SERVIÇO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.demanda_servico;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE demanda_servico CHANGE id_web_unidade id_unidade INT;
ALTER TABLE demanda_servico CHANGE id_x_servico id_servico INT;
ALTER TABLE demanda_servico CHANGE id_web_senha id_senha INT;

/*vizualizar tabela*/
SELECT * FROM demanda_servico;

/*NET_GUICHE_SERVICO - GUICHE_SERVICO*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.net_guiche_servico;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE net_guiche_servico CHANGE id_net_guiche id_guiche INT;
ALTER TABLE net_guiche_servico CHANGE id_net_servico id_servico INT;
ALTER TABLE net_guiche_servico CHANGE id_web_unidade id_unidade INT;

/*vizualizar tabela*/
SELECT * FROM net_guiche_servico;

/*NET_SERVICO_ATIVIDADE - SERVICO_ATIVIDADE*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.net_servico_atividade;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE net_servico_atividade CHANGE id_net_servico id_servico INT;
ALTER TABLE net_servico_atividade CHANGE id_net_atividade id_atividade INT;
ALTER TABLE net_servico_atividade CHANGE id_web_unidade id_unidade INT;

/*Alterar nome da tabela*/
RENAME TABLE net_servico_atividade TO servico_atividade;
/*vizualizar tabela*/
SELECT * FROM net_servico_atividade;

/*NET_SERVICO_ATIVIDADE - SERVICO_ATIVIDADE*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.senhas_categoria_servico;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE senhas_categoria_servico CHANGE id_x_categoria id_categoria INT;
ALTER TABLE senhas_categoria_servico CHANGE id_x_servico id_servico INT;

/*vizualizar tabela*/
SELECT * FROM senhas_categoria_servico;

/*TEMPOS_EFETIVOS*/
/*VISUALIZAR TABELA ORIGINAL*/
SELECT * FROM sigaweb1.tempos_efetivos;

/*aletrar nome da coluna modificada*/
USE sigaweb1;
ALTER TABLE tempos_efetivos CHANGE id_web_senha id_senha INT;

/*vizualizar tabela*/
SELECT * FROM senhas_categoria_servico;