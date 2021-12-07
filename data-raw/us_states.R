## code to prepare `us_states` dataset goes here

library(tidyverse)

us_states <- tibble(
  state_name = state.name,
  state = state.abb,
  division = state.division,
  region = state.region,
  area = state.area,
  center_x = state.center$x,
  center_y = state.center$y,
) %>%
  bind_rows(
    tribble(
      ~ state_name, ~ state, ~ division, ~ region, ~ area, ~ center_x, ~ center_y,
      "District of Columbia", "DC", "South Atlantic", "South", 68.34, -77.03637, 38.89511
    )
  )

usethis::use_data(us_states, overwrite = TRUE)
