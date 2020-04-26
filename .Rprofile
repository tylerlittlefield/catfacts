source("renv/activate.R")

# run all tests
test_app <- function() testthat::test_dir('tests/testthat/')

# write test results to csv
test_report <- function() {
  message("Running all tests from `tests/testthat`")

  x <- dplyr::select(tibble::as_tibble(test_app()), -result)
  write.csv(x, "test-report.csv")

  message("`test-report.csv` saved to root directory")
}

# select which tests to run
test_menu <- function(test_dir = "tests/testthat") {
  chosen     <- select.list(list.files(test_dir), multiple = TRUE)
  test_regex <- paste(gsub(".R$", "", gsub("test-", "", chosen)), collapse = "|")
  testthat::test_dir("tests/testthat", test_regex)
}
