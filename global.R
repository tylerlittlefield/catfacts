library(shiny)
library(reactable)
library(httr)
library(dplyr)

cat_facts <- GET("https://cat-fact.herokuapp.com/facts") %>%
  content() %>%
  .[["all"]] %>%
  lapply("[[", "text") %>%
  .[nchar(.) > 20]

contact <- readRDS("data/contact.rds")
