context("cat fact")

app <- ShinyDriver$new(test_path("../../"))

test_that("Random cat facts are generated", {
  app$setInputs(go = "click")

  x <- app$getAllValues()

  cat_fact_id   <- x$export$n
  cat_fact_data <- x$export$cat_facts

  expect_equal(
    object = x$output$fact,
    expected = cat_fact_data[[cat_fact_id]]
  )
})
