var num: real
put "Input number: " ..
get num
delay (500)
cls
loop
delay (500)
put num
exit when (num = 1)
if num mod 2 = 0 then
num := num /2
else num := num*3 +1
end if
end loop
