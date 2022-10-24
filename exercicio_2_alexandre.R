library(tidyverse)
library(openxlsx)
library(stringr)
library(data.table)
# Set directory
setwd("/home/xedar/Documents/Trabalho/curso_r")

# Read db
financas_municipais <- read.csv("financas_municipais.csv")

# Select, filter, mutate, arrange, pipe, summarise, group_by

novo_objeto <- select(financas_municipais, c(1:17, 447:487))
novo_objeto_2 <- select(financas_municipais)

# Ler nome variáveis
names(novo_objeto_2)

# Selecionar e filtrar
novo_objeto_2 <- financas_municipais %>%
  select(1:17, 447,487) %>%
  filter(Populacao >= 10000 
         & Populacao <= 20000 
         & Código_UF == 31) %>%
  mutate(nome_uf = "MG")

# IF else
class(novo_objeto$Nome_UF)

objeto_3 <- novo_objeto %>%
  mutate(Nome_UF = as.character(Nome_UF),
         Nome_UF = ifelse(Nome_UF == "Minas Gerais", "MG", Nome_UF))

help("ifelse")
  
help("select")
