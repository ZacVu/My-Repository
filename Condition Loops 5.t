var a, b, times, answer, sets, wrong, mistakes, limit: int
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
else
wrong := wrong + 1
mistakes := 1
if mistakes = limit then put "Sorry you have reached the limit, moving on to next question"
else

loop
exit when (answer = a + b or mistakes = limit)
wrong := wrong + 1
mistakes := mistakes + 1
put "Wrong answer. Please try again: " ..
get answer
exit when (answer = a + b or mistakes = limit)
wrong := wrong + 1
mistakes := mistakes + 1
end loop



end if
end for
put "Do you want yo continue? Press y or n: " ..
get choice
sets := sets + 1 
exit when(choice = "n")
end loop
put "You answered a total of: ", sets*times, " questions and made : ", wrong, " mistakes."
