test_that("replace_nas_with_zeros works", {
  df <- dplyr::tibble(x = c(1, 2, NA), y = c(NA, NA, 0))
  expect_equal(
    replace_nas_with_zeros(df),
    dplyr::tibble(x = c(1, 2, 0), y = c(0, 0, 0))
  )
})
