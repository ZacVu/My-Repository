var money, quarters, dimes, nickels, pennies: int
put "The amount of change in cents you want to convert is: " ..
get money
loop 
exit when (money <= 100)
put "Sorry the amount of money input is too large. Please re-enter the amount of change in cents you want to convert: " ..
get money
end loop
quarters := money div 25
dimes := (money mod 25) div 10
nickels := ((money mod 25) mod 10) div 5
pennies := nickels := ((money mod 25) mod 10) mod 5
put "The minimum amount of coins required to exchange is: ", quarters + dimes + nickels + pennies 
