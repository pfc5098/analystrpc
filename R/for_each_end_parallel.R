#' End parallel computing
#'
#' @export
for_each_end_parallel <- function() {
  foreach::registerDoSEQ()
}
