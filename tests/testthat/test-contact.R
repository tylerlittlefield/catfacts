library(testthat)
library(shinytest)

context("contact")
test_that("Contact info is available", {

  # start the app
  app <- ShinyDriver$new(test_path("../../"))

  # navigate to about section
  app$setInputs(sidebar = "about")

  # call app values
  appvals <- app$getAllValues()

  # expect that the contact table is rendering
  expect_equal(
    object = appvals$export$contact,
    expected = readRDS(test_path("../../data/contact.rds"))
  )
})
