library(tidyverse)
if (!require(JurisVis)) devtools::install_github("jjesusfilho/JurisVis")
library(package)

dic<-readRDS("data-raw/dic.rds")


## Usar sempre snake_case
inseridos_baixada <- read_csv("data-raw/Inseridos - Baixada.csv")
inseridos_abm <- read_csv("data-raw/Inseridos - ABM.csv")
atendidos_baixada <- read_csv("data-raw/Atendidos - Baixada.csv")
atendidos_abm <- read_csv("data-raw/Atendidos - ABM.csv")


base<-mget(c("inseridos_baixada","inseridos_abm","atendidos_baixada","atendidos_abm"))

base <- map2_dfr(base,c("Inseridos Baixada","Inseridos ADM","Assistidos Baixada","Assistidos ADM"),~{
  tibble::add_column(.x,base= .y,.before=1) %>%
  dplyr::mutate_if(is.character,list(~dplyr::na_if(.,"-"))) %>%
  dplyr::mutate_if(is.character,list(~dplyr::na_if(.,"NÃO RESPONDEU")))

})


base <- base %>%
  janitor::clean_names()

## Correções

##deficiência

base<-base %>%
  mutate(tipo_deficiencia = factor(tipo_deficiencia,
                                   labels=dic$categorias[which(dic$controle=="TipoDeficiencia")]))
## Grau de instrução


base<-base %>%
      mutate(grau_instrucao = factor(grau_instrucao,
                                            labels=dic$categorias[which(dic$controle=="GrauInstrucao")]))
## Laudo

base <- base %>%
  mutate(laudo = factor(laudo,labels=c("negativo","positivo")))

jus_bar2(base,laudo,tipo_deficiencia,"Deficiência por laudo")

## tec_assistiva

base<-base %>%
  mutate(tec_assistiva = factor(tec_assistiva, labels=c("não","sim")))

## Benefício

base <- base %>%
  mutate(beneficio = factor(beneficio, labels= c("não","sim")))

## Situação

base<-base %>%
  mutate(situacao = factor(situacao,
                                 labels=dic$categorias[which(dic$controle=="Situação")]))


## Continua Inserido

base <- base %>%
  mutate(continua_inserido = factor(continua_inserido,labels=c('não',"sim")))


## Avaliação



base <- base %>%
  mutate(avaliacao = factor(avaliacao,levels=f_ruim),
         avaliacao2 = fct_explicit_na(avaliacao,"Faltantes"))


likert_bar(base,base,avaliacao,"kk")



plotar_barras <- c( "origem_atendimento","sexo",
                   "regiao",  "tipo_deficiencia",
                   "laudo", "tec_assistiva", "quais", "beneficio", "grau_instrucao",
                   "situacao", "empresa_contratante", "cargo_contratacao", "admissao",
                   "demissao", "continua_inserido", "avaliacao", "satisfeito", "dor_fisica",
                   "tratamento", "aproveita_vida", "sentido_vida", "concentrar",
                   "seguro", "ambiente_saudavel", "energia", "apar_fisica", "necess_dinheiro",
                   "inform_dia_dia", "ativ_lazer", "locomocao", "sono", "ativ_dia_dia",
                   "capac_trabalho", "auto_satisfacao", "satisf_rel_pessoais", "satisf_sexo",
                   "apoio_amigos", "satisf_local_mora", "satis_serv_saude", "satis_meio_transp",
                   "sent_negativos", "qv2avaliacao", "qv2satisfeito", "qv2dor_fisica",
                   "qv2tratamento", "qv2aproveita_vida", "qv2sentido_vida", "qv2concentrar",
                   "qv2seguro", "qv2ambiente_saudavel", "qv2energia", "qv2apar_fisica",
                   "qv2necess_dinheiro", "qv2inform_dia_dia", "qv2ativ_lazer", "qv2locomocao",
                   "qv2sono", "qv2ativ_dia_dia", "qv2capac_trabalho", "qv2auto_satisfacao",
                   "qv2satisf_rel_pessoais", "qv2satisf_sexo", "qv2apoio_amigos",
                   "qv2satisf_local_mora", "qv2satis_serv_saude", "qv2satis_meio_transp",
                   "qv2sent_negativos", "avaliacao_empresarial", "id_1", "id_cliente",
                   "satisf_tsea", "satisf_contrat_ea", "satisf_tec_ea", "satisf_atuac_tec",
                   "satisf_resultado", "satisf_its", "ativ_efetiv", "cdef_x_sdef",
                   "satisf_integ", "habil_trab", "conduta", "autonomia", "coleg_trabalho",
                   "def_x_coleg_trab", "apoio_coleg_trab", "def_oport", "contratar",
                   "recomenda_contratar", "projeto_pronas", "ea_its", "data_insercao",
                   "sugestao", "avaliacao_servico_saude", "id_2", "id_cliente_1",
                   "sit_paciente", "inser_ea_paciente", "reab_paciente", "imp_ea_paciente",
                   "serv_pub_ea_paciente", "data_insercao_1", "avaliacao_familiar",
                   "id_3", "id_cliente_2", "criado", "idade", "sexo_1", "responsavel_residencia",
                   "grau_parentesco", "qtd_pessoa_residencia", "empregado", "ocupacao",
                   "renda_familiar", "numero_pessoa_trabalha", "gasto_mes", "usa_sus",
                   "recebe_beneficio", "qual_beneficio", "continua_beneficio", "melhora_saude",
                   "melhora_relacao", "renda_importante", "melhora_bem_estar", "autonomia_tarefa",
                   "melhora_interacao", "melhora_auto_estima", "uso_medicamento",
                   "acompanha_medico", "bem_estar", "principais_melhorias", "consideracao",
                   "outras_obs", "habilidade", "escrita", "leitura", "interp_texto",
                   "nocao_idiomas", "celular", "adicao_subtracao", "multiplicacao_divisao",
                   "tarefas_rapido", "pontualidade", "calendario_relogio", "alfabetica",
                   "numerica", "org_docs", "instrucoes", "dinheiro", "cartao", "cozinha",
                   "tarefas_domesticas", "cuidados_pessoais", "cargas", "office",
                   "id_cliente_3", "id_4", "profissao", "ja_trabalhou", "empresa_recente",
                   "id_cargo", "salario", "data_entrada", "data_saida", "atividades",
                   "desligamento", "tipo_contratacao", "area_interesse", "expectativas_trabalho",
                   "disponib_trabalho", "trabalha_equipe", "acata_orientacoes",
                   "relac_colegas_trabalho", "id_cliente_4", "id_5", "id_empresa1",
                   "id_empresa2", "profissaocol", "id_empresa3", "profissaocol1",
                   "id_cargo2", "salario2", "data_entrada2", "data_saida2", "atividades2",
                   "desligamento2", "id_cargo3", "salario3", "data_entrada3", "data_saida3",
                   "atividades3", "desligamento3", "tipo_contratacao2", "tipo_contratacao3",
                   "empresa_recente2", "empresa_recente3", "cargo_recente", "cargo_recente2",
                   "cargo_recente3", "qualidade_emprego", "id_6", "id_cliente_5",
                   "emprego", "qtd_emprego", "idade_emprego", "forma_emprego", "desemp",
                   "rel_lider", "rel_coleg", "salario_1", "cond_trabalho", "jornada_trabalho",
                   "promocao", "aprendizagem", "resol_prob", "tarefa_compl", "ideia_trabalho",
                   "metodo_trabalho", "ordem_taref", "oport_def", "sal_def", "def_trab_int",
                   "bom_tratam", "contratacao", "capac_trabalho_1", "mercado_trabalho",
                   "demissao_2", "arquit", "comunic", "metod", "instrum", "program",
                   "atitud", "ausentar", "aceita_def", "rel_posit", "apoia_trabalho",
                   "data_insercao_2", "saude", "medicamentos", "quais_1", "efeitos_colaterais",
                   "realiza_acompanhamento", "unidade", "inf_acompanhamento", "id_cliente_6",
                   "id_7", "transporte", "gratuidade", "descricao_transporte", "id_cliente_7",
                   "id_8")

## Sexo

base %>%
  likert_bar(grupo = base,sexo,"Distribuição por sexo")

## Raça

base %>%
  likert_bar(base,raca,"Distribuição por raça")




