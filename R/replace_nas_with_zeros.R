#' Replace NAs with zeros
#'
#' @param tbl A data frame to fill.
#'
#' @return The filled data frame.
#' @export
replace_nas_with_zeros <- function(tbl){
  pb <- progress::progress_bar$new(
    format = "  Replacing NAs with zeros [:bar] :percent eta: :eta",
    total = length(tbl)
  )
  for(i in 1:length(tbl)) {
    pb$tick()
    tbl[[i]] <- tidyr::replace_na(tbl[[i]], 0)
  }
  tbl
}
