f<- system.file("external/lux.shp", package="raster")
library(raster)
p<- shapefile(f)

p

par(mai=c(0,0,0,0))
plot(p)

## geometry and attributes
d<- data.frame(p)
d

#showing the attributes of the head data
head(d)
g<- geom(p)
head(g)


#extracting variables
p$NAME_2
crs(p)



p[,'NAME_2']


set.seed(0)
p$new<-sample(letters,length(p))
p

#getting the total values of a grid

p$new <- NULL
