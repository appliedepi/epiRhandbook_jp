# clear workspace
rm(list = ls(all = TRUE))

#load core packages
pacman::p_load(
     tidyverse,
     rio,
     here,
     DT,
     stringr,
     lubridate
)

# import the cleaned ebola linelist
linelist <- rio::import(here::here("data", "linelist_cleaned.rds"))

# import the count data - facility level
#count_data <- rio::import(here::here("data", "facility_count_data.rds"))