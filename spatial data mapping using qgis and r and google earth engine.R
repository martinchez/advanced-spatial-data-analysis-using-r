#install.packages("ggmap")
library(ggmap)
library(ggplot2)
library(RgoogleMaps)

setwd("C:/Users/ShellHunter.DESKTOP-EO423F6/Documents/rstudio/Intermdiate spatial data analysis using R/data")

#display different google earth maps for a given area


Nairobi <-c(lon=263824.51,lat=9858602.28)

# Google now requires an API key.
#See ?register_google for details.

?register_google #use this to learn how to register for a google map api key

register_google(key = "AIzaSyCdLL-_I7_smgwq9WUBKMh0I4f5yxlrd50" ,write=TRUE) #NB this is not always secure  


centroidKenya<-geocode("Nairobi")
centroidKenya


# get map zoom at level5

map_5 <- get_map(location = centroidKenya,zoom = 5,scale = 1)

# let plot tha zoom level
ggmap(map_5)

#get map zomm level 13 more fine scale


kenya_zom13<- get_map(location = Nairobi,zoom = 13,scale=1)

#plotting zoom 13
ggmap(kenya_zom13)


