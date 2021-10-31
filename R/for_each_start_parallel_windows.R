#' Start parallel computing on Windows
#'
#' @param cores Number of cores to use
#'
#' @return A PSOCK cluster object
#'
#' @export
for_each_start_parallel_windows <- function(cores) {
  cl <- parallel::makePSOCKcluster(cores)
  doParallel::registerDoParallel(cl)
  cl
}
