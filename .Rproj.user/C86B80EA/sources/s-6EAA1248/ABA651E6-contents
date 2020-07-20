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
#st_read()
pl<- rgdal::readOGR("VNM_adm2.shp")
plot(pl)
summary(pl)
selecti<- pl["ID_2" == 38241]

plot(selecti)

plot(pl,axes=TRUE,col="pink",border="red",main="First Plot")


#using spplot to plot the area 
#shape_area
spplot(pl,"Shape_Area",sub="Average Area" ,main="Area in different regions", col="transparent")

#specifying colors usng r color brewer
#install.packages("RColorBrewer")
library(RColorBrewer)
color.mix<- brewer.pal(n=8,name="Blues")

spplot(pl,"Shape_Area",sub="Average area",main="Testing color Pallets",col.regions=color.mix,cuts=6,col="transparent")

setwd("C:/Users/ShellHunter.DESKTOP-EO423F6/Documents/rstudio/Intermdiate spatial data analysis using R/data/ke_counties")

ke_counties <-  rgdal::readOGR("counties.shp")

ke_counties

plot(ke_counties)
spplot(pl,"Shape_Area",sub="Average area",main="Testing color Pallets",col.regions=color.mix,cuts=6,col="transparent")
spplot(ke_counties,"Shape_Area",sub="counties Average area",main="Kenya Counties",col.regions=color.mix,cuts=6,col="transparent")

#display quantiles for color break
library(classInt)
color.mix2<- brewer.pal(n=6,name="YlOrRd")

breaks.qt<- classIntervals(ke_counties$Shape_Area,n=6,style="quantile",intervalClosure = "right")

spplot(ke_counties,"Shape_Area",col.regions=color.mix2,cuts=6,at=breaks.qt$brks)


#lets now read the world shapefile
setwd("C:/Users/ShellHunter.DESKTOP-EO423F6/Documents/rstudio/Intermdiate spatial data analysis using R/data")

worldshp<- rgdal::readOGR("ne_10m_admin_0_countries.shp")
head(worldshp,n=2)

plot(worldshp)

#spplot(worldshp,"NAME",col.regions=color.mix2,cuts=6,col="transparent")

spplot(worldshp,"POP_EST",main="World countries",col="green")
breaks.qt<- classIntervals(worldshp$POP_EST,n=6,style="quantile",intervalClosure = "right")
spplot(ke_counties,"POP_EST",col.regions=color.mix2,cuts=6,at=breaks.qt$brks)
