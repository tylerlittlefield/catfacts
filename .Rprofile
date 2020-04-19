source("renv/activate.R")

library(testthat)
library(shinytest)

test_app <- function() testthat::test_dir('tests/testthat/')

test_report <- function() {
  message("Running all tests from `tests/testthat`")

  x <- dplyr::select(tibble::as_tibble(test_app()), -result)
  write.csv(x, "test-report.csv")

  message("`test-report.csv` saved to root directory")
}
