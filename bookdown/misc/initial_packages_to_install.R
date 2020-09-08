###############################
###   PACKAGES TO INSTALL   ###
###############################

if (!requireNamespace("pacman")) install.packages("pacman")

pacman::p_load(
     
     # installing packages
     devtools,
     drat,
     
     
     usethis
)






#Bringing in data
install.packages("RMySQL") #Databases
install.packages("RSQLite") #Databases
install.packages("XLConnect")  #Excel
install.packages("xlsx")  #Excel
install.packages("foreign") # for loading SAS, STATA datasets into R
#   (No package requred for using read.csv, read.table)
# Use: my_data <- read.csv(file.choose()), and read.delim(file.choose()) (for tab delimited data) (options available for data with "," and decimal)

#Manipulating Data
install.packages("dplyr")  #subsetting, summarizing, rearranging, joining
install.packages("tidyverse")  #overarching install of tidyverse - change layout of datasets, "gather" and "spread" to convert to r-friendly "tidy" format
  #includes: lubridate, tidyr, ggplot2, readxl, reshape2, RColorBrewer, and many others.

install.packages("stringr")  #for regular expressions and character strings
#install.packages("lubridate") #makes working with dates and times easier (included in tidyverse)


#Visualization
#install.packages("ggplot2") #make beautiful graphics, uses "grammar of graphics" (included in tidyverse)  http://vita.had.co.nz/papers/layered-grammar.pdf
install.packages("directlabels") #direct label a ggplot2 grouped object
install.packages("lattice") #for plotting multivariate data
install.packages("ggvis") #interactive, web-based graphics built with grammar of graphics
install.packages("vcd") #Visualizing Categorical Data (highly extensible grid graphics)
install.packages("rgl")  #interactive 3D visualizations
install.packages("htmlwidgets") #interactive javascript-based visualizations. http://www.htmlwidgets.org/showcase_metricsgraphics.html 
                                #Necessary for: leaflet (maps), and:
install.packages("plotly") #makes ggplot2 interactive and facilitates web-embed
install.packages("dygraphs")    #dygraphs (time series)
install.packages("DT")          #DT (interactive datatables with filter, sort, pages)
install.packages("diagrammeR")  #diagrammeR (diagrams)
install.packages("networkD3")   #networkD3 (3D network graphs)
install.packages("d3heatmap")   #interactive heatmaps
                                #threeJS (3D scatterplots and globes)
install.packages("googleVis")   #Hans Rosling visualizations

#Modelling Data
install.packages("car")     #making tpe II and type III Anova tables
install.packages("mgcv")    #General Additive Models
install.packages("lme4")    #Linear mixed-effects models
install.packages("nlme")      #Non-linear mixed-effects models
install.packages("randomForest") #Random forest methods from machine learning
install.packages("multcomp")   #tools for multiple comparison testing
install.packages("vcd")    #Visualization tools and tests for categorical data
install.packages("glmnet")  #Lasso and elastic-net regression methods w cross-validation
install.packages("survival") #survival analysis
install.packages("caret")  #tools for training regression and classification models
install.packages("Hmisc")  #various statistical tools

#To Report Data
install.packages("shiny")
install.packages("rmarkdown")
install.packages("xtable") #takes R object like data frame and returns latex or HTML code to paste it nicely into documents. Often paired with rmarkdown.

#Connecting to Other Statistical Software
install.packages("RStata") #R to Stata
install.packages("haven") #connects R and SAS, SPSS, Stata,

#Geospatial / Mapping
install.packages("ggmap") #download street maps straight from google for background in ggplots
#which includes:
  install.packages("maps")  #easy to use map polygons for plots
  install.packages("sp") #for loading and using spatial files
install.packages("maptools") #for loading and using spatial files
install.packages("sf")
install.packages("rgeos")
install.packages("leaflet") #for use with html javascript stuff
#also includes:
  install.packages("raster")
install.packages("rsatscan")  #Wraparound package that facilitates SATSCAN (needs SATSCAN though)
install.packages("rgdal")

#Time Series
install.packages("xts")  #very flexible - used to make cases timeline
install.packages("zoo") #most popular

#Epidemiology
install.packages("splitstackshape") #Really nice syntax for expanding datasets
install.packages("OutbreakTools")  #https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4058532/

#Basic Epi
install.packages("epiR")  #Some useful epitools especially 2*2 tables and stratified MH Odds
install.packages("lmtest") #for doing likelihood ratio tests between models 

#Poisson & Cox Regression & Survival Analysis
install.packages("Epi") #Tools for Lexis Models
install.packages("popEpi") #Extra tools to go with 'Epi' and make nice rate tables
install.packages("survival") #for survial analysis, kaplan-meier plots and cox regression
install.packages("survminer") #Really nice KM plots!

#Random-Effects Models
install.packages("lme4") #For fitting random-effects models
install.packages("sjstats") #For intraclass correlation coeffiecients from Random-effects models

#Multiple Imputation
install.packages("mice") #For multiple imputation

install.packages("arsenal") #Really nice summmary tables

#Complex survey data analysis
install.packages("survey") #For handling complex survey data
install.packages("ICC") #Alternative methods for ICC calculation from survey data

#Meta-analysis
install.packages("meta")
install.packages("metafor")





