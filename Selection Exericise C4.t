var money, quarters, dimes, nickels, pennies: int
put "The amount of change in cents you want to convert is: " ..
get money
%Extra code for extra accuracy
loop
exit when (money <= 100)
put "Sorry the amount of money input is too large. Please re-enter the amount of change in cents you want to convert: " ..
get money
end loop
quarters := money div 25
dimes := (money mod 25) div 10
nickels := ((money mod 25) mod 10) div 5
pennies := ((money mod 25) mod 10) mod 5
put "The minimum amount of coins required to exchange is: ", quarters + dimes + nickels + pennies 
put "The required types of coins for the minimum amount of coin(s) is: " ..
if quarters = 0 then put "" ..
else if quarters = 1 then put "1 quarter " ..
else put quarters, " quarters " ..
end if 
end if
if dimes = 0 then put "" ..
else if dimes = 1 then put "1 dime " ..
else put dimes, " dimes " ..
end if
end if 
if nickels = 0 then put "" ..
else put "1 nickel " ..
end if
if pennies = 0 then put "" ..
else if pennies = 1 then put "1 penny"
else put pennies, " pennies" 
end if
end if

