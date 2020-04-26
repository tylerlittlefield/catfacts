library(testthat)
library(shinytest)

context("cat fact")
test_that("Random cat facts are generated", {

  # start the app
  app <- ShinyDriver$new(test_path("../../"))

  # click the go button
  app$setInputs(go = "click")

  # get all app values
  appvals <- app$getAllValues()
  cat_fact_id <- x$export$n
  cat_fact_data <- x$export$cat_facts
  expect_equal(x$output$fact, cat_fact_data[[cat_fact_id]])
})
