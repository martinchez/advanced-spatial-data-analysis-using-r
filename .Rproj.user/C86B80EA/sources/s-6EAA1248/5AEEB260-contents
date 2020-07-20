library(rgeos)
library(raster)

setwd("c:\\working directory")

x<- CRS("+proj=longlat +ellps=WGS84")

naxshapefile<-readShapePoly("nax",verbose = TRUE,proj4string = x)
plot(naxshapefile)

gArea(naxshapefile)

gArea(naxshapefile)*100*100 #area in kilometers squared


#performing intersection between two shapefiles
vintersect<-gInterpolate(naxshapefile,secondshapefile)

plot(vintersect)

bahaconstituency<-readShapePoly("baha_cont",verbose=TRUE,proj4string=x)

plot(bahaconstituency)

gLength(bahaconstituency)#finding the lenth 

gCentroid(bahaconstituency)#finding the central point








