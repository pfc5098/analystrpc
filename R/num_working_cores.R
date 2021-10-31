#' Report number of working cores
#'
#' @return number of working cores
#' @export
num_working_cores <- function() {
  foreach::getDoParWorkers()
}
