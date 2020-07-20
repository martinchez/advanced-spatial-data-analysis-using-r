#install.packages("GISTools")
library(GISTools)
library(raster)

setwd("C:/Users/ShellHunter.DESKTOP-EO423F6/Documents/rstudio/Intermdiate spatial data analysis using R/data/ke_counties")

ke_counties <-  rgdal::readOGR("counties.shp")

ke_counties

choropleth(ke_counties,ke_counties$Shape_Area)

#area expressed in kilometers
sqkm<- ke_counties$Shape_Area*(110*110) 
shades<- auto.shading(sqkm,n=9,cutter = rangeCuts,col=brewer.pal(6,"Blues") )


choropleth(ke_counties,sqkm,shades,axes=TRUE)

#adding a title
title(main = "Kenya Counties")

#adding a north arrow
north.arrow(45,0,0.2)
