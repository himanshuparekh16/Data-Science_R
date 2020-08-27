e_quakes <- datasets::quakes


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

