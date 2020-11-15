# modify the ebola_sim linelist from outbreaks package
######################################################
pacman::p_load(tidyverse, rio, here, incidence)

# parts of evd
evd_sim    <- outbreaks::ebola_sim$linelist
evd_sim_tl <- outbreaks::ebola_sim$contacts

# make evd, with contacts transmissions as variables in the linelist
evd <- evd_sim %>% 
     full_join(evd_sim_tl, "case_id")

# plot evd
epicurve_weekly  <- incidence::incidence(evd$date_of_onset, interval = "Monday week", groups = evd$gender)
plot(epicurve_weekly)





# ADD AGE (different means by gender)
#####################################

# Make age for males
ages_m <- round(abs(rnorm(n = nrow(evd %>% filter(gender == "m")), mean = 15, sd = 15)))
hist(ages_m)

# make ages for females
ages_f <- round(abs(rnorm(n = nrow(evd %>% filter(gender == "f")), mean = 5, sd = 15)))
hist(ages_f)


# add age (split database by gender, add ages, then re-join)
evd_m <- evd %>% filter(gender == "m") %>% 
     mutate(age = ages_m)

evd_f <- evd %>% filter(gender == "f") %>% 
     mutate(age = ages_f)

evd <- bind_rows(evd_m, evd_f)

# run t-test
t.test(data = evd, age ~gender)

# add years/months column
#########################
# set default as "years"
evd$age_time <- "years"

# get random entries to change to months
to_months <- round(rnorm(n=round(nrow(evd)*.005),  mean=nrow(evd)*.5, sd=1000)) # 0.5% of rows
to_months <- to_months[to_months < nrow(evd) & to_months > 0]        # ensure indices are in appropriate range

# get months numbers
months_nums <- sample(c(seq(1:12), 18, 24, 36), size = length(to_months), replace = T)

# replace ages with months numbers
evd$age[to_months]      <- months_nums
evd$age_time[to_months] <- "months" 

table(evd$age_time, evd$age)


# GENDER MISSING
################
# random indices to convert to missing:
to_NA_gender <- round(rnorm(n=round(nrow(evd)*.05),  # 5% of entries
                   mean=nrow(evd)*.5,             # mean 1/2 way 
                   sd=1000))
to_NA_gender <- to_NA_gender[to_NA_gender < nrow(evd) & to_NA_gender > 0] # ensure indices are in appropriate range


evd$gender[to_NA_gender] <- NA                       # now replace those indices in foo with NA



# AGE MISSING
#############
# set missing ages as subset of missing gender
to_NA_age <- sample(to_NA_gender, size = round(length(to_NA_gender)*0.3), replace = F)
evd$age[to_NA_age] <- NA

table(is.na(evd$age), is.na(evd$gender))


# ONSET MISSING
###############
# random indices to convert to missing:
to_NA_onset <- round(rnorm(n=round(nrow(evd)*.05),  # 5% of entries
                         mean=nrow(evd)*.4,    # mean **earlier** in the outbreak 
                         sd=1000))
to_NA_onset <- to_NA_sym[to_NA_onset < nrow(evd) & to_NA_onset > 0] # ensure indices are in appropriate range
evd$date_of_onset[to_NA_onset] <- NA



# ADD SYMPTOMS VARIABLES
########################
evd <- evd %>% 
        mutate(fever  = sample(c("yes", "no"), nrow(evd), replace = T, prob = c(0.80, 0.20)),
               chills = sample(c("yes", "no"), nrow(evd), replace = T, prob = c(0.20, 0.80)),
               cough  = sample(c("yes", "no"), nrow(evd), replace = T, prob = c(0.9, 0.15)),
               aches  = sample(c("yes", "no"), nrow(evd), replace = T, prob = c(0.10, 0.90)),
               vomit = sample(c("yes", "no"), nrow(evd), replace = T))

# SYMPTOMS MISSING
# random indices to convert to missing:
to_NA_sym <- round(rnorm(n=round(nrow(evd)*.05),  # 5% of entries
                            mean=nrow(evd)*.2,    # mean **earlier** in the outbreak 
                            sd=1000))
to_NA_sym <- to_NA_sym[to_NA_sym < nrow(evd) & to_NA_sym > 0] # ensure indices are in appropriate range


evd$fever[to_NA_sym] <- NA                       # now replace those indices in foo with NA
evd$chills[to_NA_sym] <- NA                       
evd$cough[to_NA_sym] <- NA                       
evd$aches[to_NA_sym] <- NA                       
evd$vomit[to_NA_sym] <- NA


# 
# # LOCATION COORDINATES (TO DO)
# ######################
# # coordinates of evd
# range(evd$lon, na.rm=T)
# pacman::p_load("rnaturalearth")
# pacman::p_load("rnaturalearthdata", "rgeos")
# 
# world <- ne_countries(scale = "medium", returnclass = "sf")
# 
# ggplot(data = world) +
#      geom_sf() +
#      geom_point(data = evd, aes(x = lon, y = lat), size = 4, 
#                 shape = 23, fill = "darkred") +
#      coord_sf(xlim = c(-15, -13.0), ylim = c(7, 10), expand = FALSE)
# 


# make column names messy
evd <- evd %>% 
     rename(`infection date` = date_of_infection,
            `date onset` = date_of_onset,
            `hosp date` = date_of_hospitalisation)


# exort
rio::export(evd, here::here("data", "ebola_simulated.csv"))
