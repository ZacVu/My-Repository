%The general quadratic formula can be used to solve for the zeroes of a quadratic equation.  
%Write a program which asks the user for values of A, B, and C from a quadratic equation, and then uses the general quadratic formula to solve for the zeroes.
%Warning: Depending upon the values for A, B, and C, you may get errors or crashes when you run your program.  This is okay for this exercise!
var A, B, C: int
put "Input values for the quadratic function:"
put "Input A: " ..
get A
put "Input B: " ..
get B
put "Input C: " ..
get C
var delta, x1, x2: real
delta := sqrt(B**2-4*A*C)
x1 := (-B - delta)/2
x2 := (-B + delta)/2
put "Solve for zeroes: x1 = ", x1, " and x2 = ", x2
