var attempts, amount, tries : int
put "How many users do you want to sign up? " ..
get amount
var username : array 1 .. amount of string
var password : array 1 .. amount of string
var entername, enterpass, entry : string
var correct : boolean
correct := false
delay (500)
cls
for i : 1 .. amount
    put "Sign up (user ", i, ")"
    put "Enter username: " ..
    get username (i) : *
    put "Enter password: " ..
    get password (i) : *
    delay (500)
    cls
end for
put "How many attempts of logins do you want? " ..
get attempts
delay (500)
cls
put "Log in"
put "Enter username: " ..
get entername
put "Enter password: " ..
get enterpass
tries := 0
loop
    for count : 1 .. amount
	if (entername = username (count) and enterpass = password (count))
		then
	    correct := true
	end if
    end for
    exit when (correct = true)
    tries := tries + 1
    exit when (tries = attempts)
    put "Sorry your username and password is invalid. Please try again."
    put "Log in"
    put "Enter username: " ..
    get entername
    put "Enter password: " ..
    get enterpass
end loop
if tries = attempts then
    put "Sorry you have reached your max amount of attempts. Please try again later."
else
    delay (500)
    cls
    put "You have successfully logged in"
    put "Enter 'quit' to exit the program"
    loop
	put "> " ..
	get entry
	exit when (entry = "quit")
    end loop
    cls
    put "You have exited the program"
end if


































