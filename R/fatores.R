f_ruim <- c(
  "MUITO RUIM",
  "RUIM",
  "NEM RUIM NEM BOA",
  "BOA",
  "MUITO BOA")


f_insatisfeito<-c(
  "MUITO INSATISFEITO",
  "INSATISFEITO",
  "NEM SATISFEITO NEM INSATISFEITO",
  "SATISFEITO",
  "MUITO SATISFEITO"
)

f_nada <- c(
  "NADA",
  "MUITO POUCO",
  "MAIS OU MENOS",
  "BASTANTE",
  "EXTREMAMENTE"
)
fatores <- list(
  Avaliacao = f_ruim,
  Satisfeito =f_satisfeito,
  DorFisica = f_nada,
  Tratamento = f_nada,
  AproveitaVida = f_nada,
  SentidoVida = f_nada,
  Concentrar = f_nada,
  Seguro = f_nada,
  AmbienteSaudavel = f_nada,
  Energia = c(
    "MUITO",
    "MÉDIO",
    "COMPLETAMENTE",
    NA,
    "MUITO POUCO",
    "NADA",
    "NÃO RESPONDEU"
  ),
  AparFisica = c(
    "COMPLETAMENTE",
    "MUITO",
    "MUITO POUCO",
    NA,
    "MÉDIO",
    "NADA",
    "NÃO RESPONDEU"
  ),
  NecessDinheiro = c(
    "NADA",
    "MUITO POUCO",
    "MÉDIO",
    "NÃO RESPONDEU",
    NA,
    "MUITO",
    "COMPLETAMENTE"
  ),
  InformDiaDia = c(
    "MUITO",
    "COMPLETAMENTE",
    "MÉDIO",
    "MUITO POUCO",
    NA,
    "NADA",
    "NÃO RESPONDEU"
  ),
  AtivLazer = c(
    "MUITO POUCO",
    "MUITO",
    "COMPLETAMENTE",
    "NADA",
    "MÉDIO",
    NA,
    "NÃO RESPONDEU"
  ),
  Locomocao = c(
    "BOA",
    "NEM RUIM NEM BOA",
    "MUITO BOA",
    NA,
    "NÃO RESPONDEU",
    "RUIM",
    "MUITO RUIM"
  ),
  Sono = c(
    "MUITO SATISFEITO",
    "SATISFEITO",
    "INSATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "NÃO RESPONDEU",
    "MUITO INSATISFEITO"
  ),
  AtivDiaDia = c(
    "SATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    "INSATISFEITO",
    "MUITO SATISFEITO",
    NA,
    "NÃO RESPONDEU",
    "MUITO INSATISFEITO"
  ),
  CapacTrabalho = c(
    "SATISFEITO",
    "INSATISFEITO",
    "MUITO SATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    NA,
    "NÃO RESPONDEU",
    "MUITO INSATISFEITO"
  ),
  AutoSatisfacao = c(
    "MUITO SATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    "SATISFEITO",
    "NÃO RESPONDEU",
    NA,
    "INSATISFEITO",
    "MUITO INSATISFEITO"
  ),
  SatisfRelPessoais = c(
    "MUITO SATISFEITO",
    "SATISFEITO",
    "MUITO INSATISFEITO",
    NA,
    "NÃO RESPONDEU",
    "NEM SATISFEITO NEM INSATISFEITO",
    "INSATISFEITO"
  ),
  SatisfSexo = c(
    "SATISFEITO",
    "MUITO SATISFEITO",
    "MUITO INSATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    "NÃO RESPONDEU",
    NA,
    "INSATISFEITO"
  ),
  ApoioAmigos = c(
    "SATISFEITO",
    "MUITO SATISFEITO",
    "MUITO INSATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "NÃO RESPONDEU",
    "INSATISFEITO"
  ),
  SatisfLocalMora = c(
    "SATISFEITO",
    "INSATISFEITO",
    "MUITO SATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    NA,
    "MUITO INSATISFEITO",
    "NÃO RESPONDEU"
  ),
  SatisServSaude = c(
    "INSATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    "MUITO SATISFEITO",
    "SATISFEITO",
    NA,
    "MUITO INSATISFEITO",
    "NÃO RESPONDEU"
  ),
  SatisMeioTransp = c(
    "SATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    "MUITO SATISFEITO",
    "INSATISFEITO",
    NA,
    "NÃO RESPONDEU",
    "MUITO INSATISFEITO"
  ),
  SentNegativos = c(
    "NUNCA",
    "FREQUENTEMENTE",
    "ALGUMAS VEZES",
    "MUITO FREQUENTEMENTE",
    NA,
    "NÃO RESPONDEU",
    "SEMPRE"
  ),
  QV2Avaliacao = c("BOA",
                   NA, "NEM RUIM NEM BOA", "MUITO BOA", "MUITO RUIM"),
  QV2Satisfeito = c(
    "SATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "MUITO SATISFEITO",
    "INSATISFEITO",
    "MUITO INSATISFEITO"
  ),
  QV2DorFisica = c(
    "MAIS OU MENOS",
    NA,
    "NADA",
    "MUITO POUCO",
    "BASTANTE",
    "EXTREMAMENTE"
  ),
  QV2Tratamento = c(
    "NADA",
    NA,
    "MUITO POUCO",
    "NÃO RESPONDEU",
    "BASTANTE",
    "EXTREMAMENTE",
    "MAIS OU MENOS"
  ),
  QV2AproveitaVida = c(
    "NADA",
    NA,
    "MAIS OU MENOS",
    "MUITO POUCO",
    "BASTANTE",
    "EXTREMAMENTE"
  ),
  QV2SentidoVida = c(
    "NADA",
    NA,
    "MUITO POUCO",
    "MAIS OU MENOS",
    "BASTANTE",
    "EXTREMAMENTE"
  ),
  QV2Concentrar = c(
    "NADA",
    NA,
    "MAIS OU MENOS",
    "MUITO POUCO",
    "BASTANTE",
    "EXTREMAMENTE",
    "NÃO RESPONDEU"
  ),
  QV2Seguro = c(
    "MUITO POUCO",
    NA,
    "NADA",
    "MAIS OU MENOS",
    "EXTREMAMENTE",
    "BASTANTE"
  ),
  QV2AmbienteSaudavel = c(
    "MAIS OU MENOS",
    NA,
    "BASTANTE",
    "NADA",
    "MUITO POUCO",
    "EXTREMAMENTE"
  ),
  QV2Energia = c("MUITO",
                 NA, "MÉDIO", "COMPLETAMENTE", "MUITO POUCO"),
  QV2AparFisica = c(
    "COMPLETAMENTE",
    NA,
    "MUITO",
    "MÉDIO",
    "MUITO POUCO",
    "NADA",
    "NÃO RESPONDEU"
  ),
  QV2NecessDinheiro = c("MÉDIO", NA, "MUITO POUCO", "MUITO",
                        "COMPLETAMENTE", "NADA"),
  QV2InformDiaDia = c("MUITO", NA, "MÉDIO",
                      "COMPLETAMENTE", "MUITO POUCO", "NADA"),
  QV2AtivLazer = c("MÉDIO",
                   NA, "MUITO POUCO", "COMPLETAMENTE", "MUITO", "NADA"),
  QV2Locomocao = c("BOA",
                   NA, "MUITO BOA", "NEM RUIM NEM BOA", "MUITO RUIM"),
  QV2Sono = c(
    "MUITO SATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "SATISFEITO",
    "INSATISFEITO"
  ),
  QV2AtivDiaDia = c(
    "SATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "MUITO SATISFEITO",
    "INSATISFEITO"
  ),
  QV2CapacTrabalho = c(
    "SATISFEITO",
    NA,
    "MUITO SATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    "INSATISFEITO",
    "MUITO INSATISFEITO"
  ),
  QV2AutoSatisfacao = c(
    "MUITO SATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "SATISFEITO",
    "NÃO RESPONDEU",
    "INSATISFEITO"
  ),
  QV2SatisfRelPessoais = c(
    "MUITO SATISFEITO",
    NA,
    "SATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    "MUITO INSATISFEITO",
    "INSATISFEITO"
  ),
  QV2SatisfSexo = c(
    "SATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "MUITO SATISFEITO",
    "NÃO RESPONDEU",
    "INSATISFEITO",
    "MUITO INSATISFEITO"
  ),
  QV2ApoioAmigos = c(
    "SATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "MUITO SATISFEITO",
    "INSATISFEITO",
    "MUITO INSATISFEITO"
  ),
  QV2SatisfLocalMora = c(
    "SATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "INSATISFEITO",
    "MUITO SATISFEITO",
    "MUITO INSATISFEITO"
  ),
  QV2SatisServSaude = c(
    "INSATISFEITO",
    NA,
    "NEM SATISFEITO NEM INSATISFEITO",
    "SATISFEITO",
    "MUITO SATISFEITO",
    "MUITO INSATISFEITO"
  ),
  QV2SatisMeioTransp = c(
    "SATISFEITO",
    NA,
    "MUITO SATISFEITO",
    "NEM SATISFEITO NEM INSATISFEITO",
    "MUITO INSATISFEITO",
    "INSATISFEITO"
  ),
  QV2SentNegativos = c(
    "NUNCA",
    NA,
    "FREQUENTEMENTE",
    "ALGUMAS VEZES",
    "MUITO FREQUENTEMENTE",
    "SEMPRE"
  )
)
