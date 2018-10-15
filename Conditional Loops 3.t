var price, terminator: int
var total: real
total := 0
put "Input exit value: " ..
get terminator
put "Input price: " ..
get price
total := total + price
loop
exit when (price = terminator)
put "Input price: " ..
get price
total := total + price
end loop
put "You have finished entering your prices. The total amount will be shown shortly."
delay (2000)
cls
total := total - terminator
put "=============================================================="
put "Your total pre-tax is: \t\t", total : 0 : 2
put "Your tax amount is: \t\t" , total * 13/100
put "Your total pay amount is: \t" ,total * 1.13
put "=============================================================="
