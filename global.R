suppressPackageStartupMessages({
  library(shiny)
  library(shinydashboard)
  library(reactable)
  library(httr)
  library(dplyr)
})

invisible(lapply(list.files("R", full.names = TRUE), source))
cat_facts <- fetch_facts("https://cat-fact.herokuapp.com/facts")
contact <- readRDS("data/contact.rds")
