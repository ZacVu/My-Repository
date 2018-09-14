var hours, minutes, seconds: int
put "Hours: "..
get hours
put "Minutes: "..
get minutes
put "Seconds: "..
get seconds
put hours, " hours, ", minutes, " minutes, ", seconds, " seconds is ", (hours + minutes/60 + seconds/3600) : 0 : 2, " hours"
