
# clear workspace
rm(list = ls(all = TRUE))

# clear all packages except base
#lapply(names(sessionInfo()$loadedOnly), require, character.only = TRUE)
#invisible(lapply(paste0('package:', names(sessionInfo()$otherPkgs)), detach, character.only=TRUE, unload=TRUE, force=TRUE))

# to ensure that tidyverse packages prevail
filter <- dplyr::filter
select <- dplyr::select
summarise <- dplyr::summarise

#load core packages
pacman::p_load(
     rio,
     here,
     DT,
     stringr,
     lubridate,
     tidyverse
)

# import the cleaned ebola linelist
linelist <- rio::import(here::here("data", "linelist_cleaned.rds"))

# import the count data - facility level
#count_data <- rio::import(here::here("data", "facility_count_data.rds"))