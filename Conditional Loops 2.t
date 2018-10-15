var terminator, number, count, positive, negative: int
count := 0
positive := 0
negative := 0
put "Enter the number you want as the terminating value: " ..
get terminator
put "Enter an integer: " ..
get number
loop
exit when (number = terminator)
put "Enter an integer: " ..
get number
count := count + 1
if number < 0 then 
negative := negative + 1
elsif number > 0 then
positive := positive + 1
end if
end loop
put "You entered: ", count, " integer(s)"
put "You entered: ", positive, " positive integer(s) and ", negative, " negative integer(s)" 
