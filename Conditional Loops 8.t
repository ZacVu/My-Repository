var users, count: int
put "How many users do you want to sign up? " ..
get users
var username, password: array 1 .. users of string
var enteredName, enteredPass: string
var correct: boolean
correct := false
delay (500)
cls
for i: 1 .. users
put "Sign up: " 
put "Enter username: " ..
get username(i)
put "Enter password: " ..
get password(i)
delay (1000)
cls
end for

put "Login: "
put "Enter your username: " ..
get enteredName
put "Enter your password: " ..
get enteredPass
count := 0
loop
count := count + 1
exit when (enteredName = username(count) and enteredPass = password(count)
end loop


