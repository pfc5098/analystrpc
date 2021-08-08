test_that("str_col_names works", {
  expect_equal(
    purrr::map(
      c("Sepal", "Petal", "Length", "Width"),
      ~ str_col_names(iris, .x)
    ),
    list(
      c("Sepal.Length", "Sepal.Width"),
      c("Petal.Length", "Petal.Width"),
      c("Sepal.Length", "Petal.Length"),
      c("Sepal.Width", "Petal.Width")
    )
  )
})
