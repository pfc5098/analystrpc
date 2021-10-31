#' Report number of cores
#'
#' @param logical if logical cores
#'
#' @return Number of cores
#' @export
num_cores <- function(logical = FALSE) {
  parallel::detectCores(logical = logical)
}
