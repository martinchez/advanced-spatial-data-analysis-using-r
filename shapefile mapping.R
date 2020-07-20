library(raster)
library(rgeos)
library(maptools)
library(sf)
#install.packages("sf")
setwd("C:\\Users\\ShellHunter.DESKTOP-EO423F6\\Documents\\rstudio\\Intermdiate spatial data analysis using R\\data\\fires")



#Southeast_Asia_NOAA18_active_fires
shapef<- rgdal::readOGR("Southeast_Asia_NOAA18_active_fires.shp")

plot(shapef)


setwd("C:/Users/ShellHunter.DESKTOP-EO423F6/Documents/rstudio/Intermdiate spatial data analysis using R/data/ggplot")
#?rgeos
#VNM_adm2
pl<- st_read("VNM_adm2.shp")
plot(pl)
