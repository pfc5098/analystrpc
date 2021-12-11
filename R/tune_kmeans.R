#' Tune K-means.
#'
#' @param tbl Data.
#' @param k_max Maximum number of centers to try.
#' @param nstart Number of random initial solutions for each trial.
#'
#' @return A data frame with two columns: (1) k, and (2) wss_to_tss.
#'
#' @importFrom rlang .data
#' @export
tune_kmeans <- function(tbl, k_max, nstart) {
  tibble::tibble(k = 1:k_max) %>%
    dplyr::mutate(
      wss_to_tss = purrr::map_dbl(
        .data$k, ~ k_to_wss_tss(tbl, k = .x, nstart = nstart)
      )
    )
}

# sub-function
k_to_wss_tss <- function(tbl, k, nstart) {
  tbl %>%
    stats::kmeans(centers = k, nstart = nstart) %>%
    broom::glance() %>%
    dplyr::mutate(wss_to_tss = .data$tot.withinss / .data$totss) %>%
    dplyr::pull(.data$wss_to_tss)
}

