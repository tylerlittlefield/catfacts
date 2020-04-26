library(testthat)
library(shinytest)

context("contact")
test_that("Contact info is available", {
  app <- ShinyDriver$new(test_path("../../"))
  app$setInputs(tabs = "about")
  x <- app$getAllValues()
  expect_equal(
    object = x$export$contact,
    expected = readRDS(test_path("../../data/contact.rds"))
  )
})
