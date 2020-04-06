context("contact")

app <- ShinyDriver$new(test_path("../../"))

test_that("Contact info is available", {
  app$setInputs(tabs = "about")

  x <- app$getAllValues()

  expect_equal(
    object = x$export$contact,
    expected = readRDS(test_path("../../data/contact.rds"))
  )
})
