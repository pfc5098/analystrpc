#' Load common packages and settings
#'
#' @export
common_packages_settings <- function() {
  packages <- c(
    "DBI", "sparklyr",
    "tidyverse", "lubridate", "scales", "zeallot",
    "data.table", "arrow", "skimr", "janitor",
    "readxl", "openxlsx",
    "janitor",
    "here", "glue",
    "highcharter", "plotly", "gt", "DT",
    "flexdashboard",
    "tsibble", "slider",
    "tidymodels",
    "ITrpc", "PLrpc"
  )

  for(package in packages) {
    if(
      !require(package, warn.conflicts = FALSE, character.only = TRUE)
    ) {
      if(stringr::str_detect(package, "rpc")) {
        devtools::install_github(glue::glue("pfc5098/{package}"))
      } else {
        utils::install.packages(package)
      }
      library(package, warn.conflicts = FALSE, character.only = TRUE)
    }
  }

  ggplot2::theme_set(ggplot2::theme_bw())
}
