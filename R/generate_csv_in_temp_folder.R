#' Generate a .csv file in a temp folder
#'
#' Create a temp folder in your project directory
#' and generate a csv file based on your data set of interest,
#' which can be conveniently pasted to other reports.
#'
#' @param tbl the data set of interest.
#' @param file_name name of the temp file; Default "temp".
#'
#' @return A .csv file in the temp folder.
#' @export
generate_csv_in_temp_folder <-
  function(tbl, file_name = "temp") {
    if(!fs::dir_exists("temp")) {
      fs::dir_create("temp")
      usethis::use_build_ignore("temp")
    }
    data.table::fwrite(
      tbl, here::here("temp", glue::glue("{file_name}.csv"))
    )
  }
