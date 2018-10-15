var name: string
var errors: int
errors := 0
put "Enter name: " ..
get name
loop
exit when (name =  "Tim" or name = "Zac" )
put "Sorry you did not enter a valid name. Please enter again: " ..
get name 
errors := errors + 1
end loop
put "You have made: " , errors, "error(s)"
