var word, endword, entry : string
var times, count, a  : int
put "What word do you want to print? " ..
get word: *
put "How many times do you want to print it? " ..
get times
put "What word should end the program? " ..
get endword: *
loop
cls
count := 0
put "The chance of this program failing is: ", (1/times)*100 : 0 : 2, "%"
loop
a := Rand.Int (1,times)
exit when (a = 1)
exit when (count = times)
count := count + 1
delay (500)
put word, " " 
end loop
if a = 1 then
delay (500)
put "You have failed to complete the output. Do you want to try again? " ..
get entry: *
else 
delay (500)
put "You have completed the program. Do you want to try again? " ..
get entry: *
end if
exit when (entry = endword)
end loop 
