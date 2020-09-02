air_pass <- datasets::AirPassengers


## top 10 and last 10 rows
head(air_pass,10)
tail(air_pass,10)


summary(AirPassengers)


###################

plot(air_pass)



# points and lines 

plot(air_pass, type= "b") # p: points, l: lines,b: both
plot(air_pass, main = 'Ozone levels in NY city',
     col = 'blue')


# Horizontal bar plot

barplot(air_pass , col= 'blue',horiz = T,axes=T)


#Histogram

hist(air_pass)


#Single box plot

boxplot(air_pass,main="Boxplot")


