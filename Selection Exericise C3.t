var weight: real 
put "The weight of your mails in g is: " ..
get weight
if weight <= 30 then put "The fee for mailing this letter is: 40 sinas."
else if weight <= 50 then put "The fee for mailing this letter is: 55 sinas."
else if weight <= 100 then put "The fee for mailing this letter is: 70 sinas."
%Normal %else put "The fee for mailing this letter is: 100 sina."
%Extend 1 %else put "The fee for mailing this letter is: ", 100 + 25* round(weight / 50 - 2), " sinas."
else put "The fee for mailing this letter is: ", 100 + 25*(((weight - 100) div 50)+round(((weight - 100) mod 50)/100)) %Extend 2
end if
end if
end if
