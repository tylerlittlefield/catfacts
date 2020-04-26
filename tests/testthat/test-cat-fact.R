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

  # grab fact id
  cat_fact_id <- appvals$export$n

  # grab fact generated
  cat_fact_data <- appvals$export$cat_facts

  expect_equal(appvals$output$fact, cat_fact_data[[cat_fact_id]])
})
