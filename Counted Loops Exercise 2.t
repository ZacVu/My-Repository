var S, L, SS, M: int
put "Input smallest number: " ..
get S
put "Input largest number: " ..
get L
put "Input step size: " ..
get SS
put "Input multiply amount: " ..
get M
for N: S .. L by SS 
put N, " * ", M, " = ", N*M
end for
