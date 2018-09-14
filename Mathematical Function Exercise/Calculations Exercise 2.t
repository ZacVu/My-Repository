var degrees, minutes, seconds : real
var latitude : real
put "Latitude: " ..
get latitude
degrees := round(latitude - 0.5)
minutes := round(((latitude - degrees)*60)-0.5)
seconds := ((latitude - degrees)*60 - minutes)*60
put latitude, " degrees = ", degrees, " degrees, ", minutes, " minutes, ", seconds, " seconds"
