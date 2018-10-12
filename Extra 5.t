var clear: char
put "0:00.0"
put "Press to start stopwatch: " ..
clear := getchar()
cls

for mins: 0 .. 59 %max 60 mins
for secs: 0 ..  59 
for milisecs: 0 .. 9
if secs < 10 then
put mins, ":0", secs, ":", milisecs
elsif secs > 10 then 
put mins, ":", secs, ":", milisecs
end if
delay (100)
cls
end for
end for
end for 
