%4a, b
var num: int
put "Input amount of value desired: " ..
get num
var count: array 1 .. num of int
for i: 1 .. upper(count)
put "Input a value: " ..
get count(i)
end for
put ""
for i: 1 .. upper(count)
for: 1 .. count(i)
put "*" ..
end for
put ""
end for
