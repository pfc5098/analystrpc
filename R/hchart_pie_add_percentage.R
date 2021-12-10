#' Add percentage label to a highchart pie chart
#'
#' @param .hchart_pie A highchart pie chart object.
#'
#' @return A highchart pie chart object with percentage labels added.
hchart_pie_add_percentage <- function(.hchart_pie) {
  .hchart_pie %>%
    highcharter::hc_tooltip(pointFormat = "<b>Value:</b> {point.y} <br>
                 <b>Percentage</b> {point.percentage:,.2f}%")
}

