#' Extract column names with regular expressions
#'
#' @param data A data frame.
#' @param pattern A pattern.
#'
#' @return Column names that match the pattern.
#' @export
#'
#' @examples
#' str_col_names(iris, "Length")
str_col_names <- function(data, pattern) {
  names(data)[
    stringr::str_detect(
      names(data), pattern
    )
  ]
}
