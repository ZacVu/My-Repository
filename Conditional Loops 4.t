var grade, total: real
put "4a)"
total := 0
for: 1 .. 4 
put "Enter your grade: " ..
get grade
total:= total + grade
end for
put "Your average grade is: ", (total / 4) : 0 : 2
delay (3000)
cls


put "4b"
total := 0
var amount: int
put "Input amount of grades to enter: " ..
get amount
for: 1 .. amount
put "Enter your grade: " ..
get grade 
total := total + grade
end for
put "Your average grade is: " , (total / amount) : 0 : 2
delay (3000)
cls


put "4c"
total := 0 
var sentinel: real
var count: int
count := 0 
put "Input sentinel value: " ..
get sentinel
put "Enter a grade: " ..
get grade 
total := total + grade
loop
exit when (grade = sentinel)
put "Enter a grade: " ..
get grade
total := total + grade 
count := count + 1
end loop
total := total - sentinel
put "Your average grade is: ", (total / count) :0 : 2
