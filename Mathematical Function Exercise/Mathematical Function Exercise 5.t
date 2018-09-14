%Some problems require rounding to a specific number of decimal places (e.g., money should always be rounded to two decimal places to represent dollars and cents).  
%In other cases, rounding is simply used to provide a nicer looking output.  
%While many programming languages provide for rounding as part of their output protocols, 
%it is also possible to achieve rounding using the rounding functions provided by the programming language (proper rounding, round up, round down).
%(a) Write a program which will prompt the user for a decimal value, round this value to two decimal places, and then output the newly rounded value.
%(b) Modify the program to allow the user to specify how many decimal places to use.
var input: real
put "Input decimal: " ..
get input
var places: int
put "Round to places: " ..
get places
put "The newly rounded value of the decimal = ", (round(input*10*places))/(10*places)
