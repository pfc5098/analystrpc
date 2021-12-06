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
)

usethis::use_data(us_states, overwrite = TRUE)
