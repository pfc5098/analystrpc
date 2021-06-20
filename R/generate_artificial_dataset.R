#' Artificial Data Set
#'
#' Generate an artificial dataset
#'
#' @param N Sample size
#'
#' @return The artificial data set
#'
#' @importFrom rlang .data
#'
#' @export
generate_artificial_dataset <- function(N) {
  dplyr::tibble(id = 1:N) %>%
    dplyr::mutate(
      blood_types = sample(
        c(rep("A", 3), rep("O", 3), "AB", "B"), size = N, replace = TRUE
      ) %>% as.factor(),
      age = sample(18:65, size = N, replace = TRUE),
      healthy_eating = stats::rnorm(N, mean = 5, sd = 2) %>% round() %>% pmax(0) %>% pmin(9),
      active_lifestyle = (
        stats::rnorm(N, mean = 5, sd = 2) %>% round() + ifelse(.data$age < 30, 0, 1)
      ) %>% pmax(0) %>% pmin(9),
      income = (
        20000 + (.data$age * 3) ^ 2 + .data$healthy_eating * 500 - .data$active_lifestyle * 300 +
          stats::runif(N, min = 0, max = 5000)
      ) %>% round(-2)
    )
}
