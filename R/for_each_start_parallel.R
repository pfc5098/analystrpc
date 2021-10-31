#' Start parallel computing on non-Windows
#'
#' @param cores Number of cores to use
#'
#' @export
for_each_start_parallel <- function(cores) {
  doMC::registerDoMC(cores = cores)
}
