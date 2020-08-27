e_quakes <- datasets::quakes

#### Summary ####

summary(e_quakes)


#### top 10 & last 10 ####

head(e_quakes, 10)
tail(e_quakes, 10)


#### Ploting various Graphs and Charts ####

plot(e_quakes$lat , e_quakes$long , xlab = 'Latitude' , ylab = 'Longitude' ,
     main = 'Latitude vs Longitude' , col = 'cyan')

plot(e_quakes$depth , ylab = 'Depth' , type = 'p')

plot(e_quakes)



#### Bar chart ####

barplot(e_quakes$depth , ylab = 'Depth' , main = 'Latitude vs Longitude
        Bar Chart')



#### Horizontal Bar Chart ####

barplot(e_quakes$stations , xlab = 'Stations' , main = 'Latitude vs Longitude
        Bar Chart' , horiz = T)



#### Histogram ####

hist(e_quakes$depth , main = 'Histogram' , xlab = 'Depth' , col = 'yellow')



#### Single Box Plot ####

boxplot(e_quakes$mag , main = 'Box Plot')



#### Multiple Box Plot ####

boxplot(e_quakes , main = 'Multi Box Plot')



#### Multiple Graphs and Charts on same screen ####

par(mfrow = c(2,3) , mar = c(2,4,4,2) , las = 0 , bty = 'o')

plot(e_quakes$lat , e_quakes$long , xlab = 'Latitude' , ylab = 'Longitude' ,
     main = 'Latitude vs Longitude' , col = 'cyan')

barplot(e_quakes$depth , ylab = 'Depth' , main = 'Latitude vs Longitude
        Bar Chart' , col = 'red')

barplot(e_quakes$stations , xlab = 'Stations' , main = 'Latitude vs Longitude
        Bar Chart' , horiz = T)

hist(e_quakes$depth , main = 'Histogram' , xlab = 'Depth' , col = 'yellow')

boxplot(e_quakes$mag , main = 'Box Plot' , xlab = 'Mag')

plot(e_quakes$long , xlab = 'Depth' , type = 'b')



#### Skewness ####

## type 1,2,3 refer to the formula used for skewness calculation
## na.rm = F means that all the N/A values are neglected

skewness(e_quakes$depth , na.rm = F , type = '1')
skewness(e_quakes$depth , na.rm = F , type = '2')
skewness(e_quakes$depth , na.rm = F , type = '3')

skewness(e_quakes$lat , type = '1')
skewness(e_quakes$long , type = '2')
skewness(e_quakes$mag , type = '3')



#### Kurtosis ####

## type 1,2,3 refer to the formula used for skewness calculation
## na.rm = F means that all the N/A values are neglected

kurtosis(e_quakes$stations , na.rm = F , type = '1')
kurtosis(e_quakes$stations , na.rm = F , type = '2')
kurtosis(e_quakes$stations , na.rm = F , type = '3')

kurtosis(e_quakes$lat , type = '1')
kurtosis(e_quakes$long , type = '2')
kurtosis(e_quakes$mag , type = '3')



#### Variance ####

var(e_quakes$mag , na.rm = F)

var(e_quakes$lat , e_quakes$long)



#### Standard Deviation ####

sd(e_quakes$depth , na.rm = F)

sd(e_quakes$long)

