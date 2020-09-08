
# Load packages
library(rio)
library(dplyr)
library(aweek)

# Import data
#############
# Select the file from your computer (a pop-up window will open)
pellagra <- rio::import(file.choose())



# Clean variables
##################
# Convert Date variable to Date class
pellagra$Date <- as.Date(pellagra$Date, format = "%d/%m/%Y")


# Create epiweek variable that will act as a Date (not just a number)
pellagra$epiweek <- aweek::date2week(pellagra$Date,         # use the Date variable
                                     week_start = "Monday", # epiweek begins on Monday
                                     floor_day = TRUE,      # only display year and week #
                                     factor = TRUE)         # expand to include all possible weeks



# Aggregate data into Epiweeks
##############################
# Create new dataset named "distritos" by aggregating the data by Province, District, and epiweek
# Create summary variables:
#  -number of facilities that reported that day
#  -sum of cases in district
distritos <- pellagra %>%
     group_by(Province, District, epiweek) %>%         
     summarize(num_facilities_reported = n(),
               sum_of_cases = sum(Cases, na.rm=T)
               )



# Plot Epicurve
###############
# Plot epicurve (SIMPLE VERSION)
ggplot(data = distritos, aes(x = epiweek, y = sum_of_cases, group = District, fill = District)) +
     geom_bar(stat = "identity")
        
   

# Plot epicurve (MORE COMPLEX VERSION)
ggplot(data = distritos, aes(x = as.Date(epiweek), y = sum_of_cases, group = District, fill = District))+
     geom_bar(stat = "identity")+
     
     # LABELS for x-axis
     scale_x_date(date_breaks = "1 month",  # displays by month
                  date_labels = '%b\n%Y')+  #labeled by month with year below
               
     # Theme specifications (axis, text, etc.)
     theme(
          # title
          plot.title = element_text(size=20, hjust= 0, face="bold"),   # title size, font, bold
          # axes
          axis.text.x = element_text(angle=0, vjust=0.5, hjust=1),
          axis.text = element_text(size=12),
          axis.title = element_text(size=14, face="bold"),
          axis.line = element_line(colour="black"),
          # background
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.background = element_blank(),
          # caption (italics, on right side)
          plot.caption = element_text(hjust = 0, face = "italic"))+
     
     # labels
     labs(x = "Week of report", 
          y = "Number of cases",
          subtitle = "Cases aggregated by week and shown by district",
          caption = "Data source: XXXXX")+
     
     ggtitle("Epidemic curve of pellagra in central Mozambique")

     
     

     

