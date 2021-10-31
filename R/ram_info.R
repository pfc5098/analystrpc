#' Report RAM info
#'
#' @export
ram_info <- function() {
  memuse::Sys.meminfo()
}
