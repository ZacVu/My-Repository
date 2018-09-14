%In trigonometry, angles are typically represented in degrees and radians.  Write a program which asks for an angle in degrees and converts it to radians.  
%Confirm your program is working by converting your first answer back to degrees.
%Hint: Your programming language may have a way to automatically convert between degrees and radians.
%Extend: Research how to do this calculation without using any built-in conversion tools (i.e., just use add, subtract, multiply, divide).
var pi, input, output: real
put "Input degree: " ..
get input
%use Pi input command
pi := 3.14
output := input * 3.14 / 180
put input, " degrees = ", output, " radians."
put "Convert back to degrees: ", output, " radians = ", output * 180, " degrees."
