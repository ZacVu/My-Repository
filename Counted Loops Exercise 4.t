var start, finish: int
var symbol: string
put "Insert page start: " ..
get start
put "Insert page end: " ..
get finish
put "Insert desiredd symbol: " ..
get symbol
put "4a,b,c)"
for count: start .. finish 
put count .. 
put " " ..
for : 1 .. count
put symbol ..
end for
put ""
end for
put ""
put "4d)"
for decreasing countdown : finish .. start 
for decreasing: countdown .. 1 
put " " ..
end for
for : 1 .. countdown
put symbol ..
end for
put ""
end for
