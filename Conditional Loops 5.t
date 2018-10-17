var a, b, times, answer, sets, wrong, tries, limit: int
var choice: string
sets := 0
wrong := 0
put "Enter how many problems you want to do: " ..
get times
put "What is the maximum tries for each question? " ..
get limit
loop
for: 1 .. times
a := Rand.Int(1,10)
b := Rand.Int(1,10)
put a, " + ", b, " = " ..
get answer
if answer = a + b then
put "" ..
elsif answer not= a + b then
tries := 0
loop
exit when (answer = a + b or tries >= limit)
tries := tries + 1
wrong := wrong + 1
if tries >= limit then put "Sorry you have exceeded your tries."
elsif tries < limit then 
put "Wrong answer. Please try again: " ..
get answer
end if
end loop
end if
end for
put "Do you want yo continue? Press n to exit. Press any other key to continue: " ..
get choice
sets := sets + 1 
cls
exit when(choice = "n")
end loop
put "You answered a total of: ", sets*times, " questions and made : ", wrong, " mistakes."
