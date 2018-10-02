/*
Zac Vu
2/10/2018
Problem Statement Assignment - Selection Statement
ICS3U
*/

%declaring variables
var lastNAME, firstNAME, strRATE, strHOUR, strTAX, strCHARITY: string
var rate, hour, regularP, overtimeP, grossP, tax, netP, charity, estimatedYrSal: real
var fontBOLD: int
var clearscreen: char

%creating font to bold inputs
fontBOLD := Font.New ("comicsans:10:bold")
%Font.Draw ("hello", 265, 387, fontBOLD, black)

%getting family (last) name and finding mistakes (accepting any characters)
put "What is your family (last) name? " .. 
get lastNAME: *
loop
exit when (lastNAME not= "")
put "Sorry, no input detected. Please input family (last) name: " ..
get lastNAME: *
end loop

%getting given (first) name and finding mistakes (accepting any characters)
put "What is your given (first) name? " ..
get firstNAME: *
loop
exit when (firstNAME not= "")
put "Sorry, no input detected. Please input given (first) name: " ..
get firstNAME: *
end loop

%getting rate of pay and findind mistakes (accepting reals)
put "What is your hourly rate of pay? " ..
get strRATE: *
if strrealok (strRATE) and strreal (strRATE) > 0 
then put "" .. 
else loop
exit when strrealok (strRATE) and strreal(strRATE) > 0
put "Sorry your input is not valid. Please input another rate value: " ..
get strRATE: *
end loop
end if
rate := strreal (strRATE)

%getting hours of work per week (accepting reals)
put "How many hours do you work per week? " ..
get strHOUR: *
if strrealok (strHOUR) and strreal (strHOUR) >= 0 and strreal(strHOUR) <= 168 %1 week = 7 days = 168 hours
then put "" .. 
else loop
exit when strrealok (strHOUR) and strreal(strHOUR) >= 0 and strreal(strHOUR) <= 168 
put "Sorry your input is not valid. Please input another hour value: " ..
get strHOUR: *
end loop
end if
hour := strreal (strHOUR)

%getting tax catagories (simple), (upper or lower case is accepted)
%LEVEL 3
put "A = 0%, B = 10%, C = 20%, D = 29%, E = 35% category"
put "What is your tax category ? " ..
get strTAX
if strTAX = "a" or strTAX = "A" or strTAX = "b" or strTAX = "B" or strTAX = "c" or strTAX = "C" or strTAX = "d" or strTAX = "D" or strTAX = "e" or strTAX = "E"
then put "" ..
else loop
exit when (strTAX = "a" or strTAX = "A" or strTAX = "b" or strTAX = "B" or strTAX = "c" or strTAX = "C" or strTAX = "d" or strTAX = "D" or strTAX = "e" or strTAX = "E")
put "Your input is invalid. Please input a valid tax category: " ..
get strTAX
end loop
end if

%assigning value for output #1
if hour <= 40 then
regularP := hour*rate
overtimeP := 0
else
regularP := 40*rate
overtimeP := (hour - 40) * rate * 2
end if
grossP := regularP + overtimeP
if strTAX = "a" or strTAX = "A" then
tax := 0
else if strTAX = "b" or strTAX = "B" then 
tax := grossP * 10 / 100
else if strTAX = "c" or strTAX = "C" then 
tax := grossP * 20 / 100
else if strTAX = "d" or strTAX = "D" then 
tax := grossP * 29 / 100
else if strTAX = "e" or strTAX = "E" then 
tax := grossP * 35 / 100
end if
end if
end if
end if
end if

%charity choice (upper or lower case is accepted)
if grossP - tax <= 20 then 
put "Sorry you don't have enough money for charity."
strCHARITY := "n/a"
else
put "Do you wish to donate $20 per week to charity (Y/N)? " ..
get strCHARITY
if strCHARITY = "y" or strCHARITY = "Y" or strCHARITY = "n" or strCHARITY = "N"
then put "" ..
else loop
exit when (strCHARITY = "y" or strCHARITY = "Y" or strCHARITY = "n" or strCHARITY = "N")
put "Sorry your input is invalid. Please input a valid choice (Y/N): " ..
get strCHARITY
end loop
end if
end if

%assigning value for output #2
if strCHARITY = "y" or strCHARITY = "Y" then
charity := 20
else if strCHARITY = "n" or strCHARITY = "N" or strCHARITY = "n/a" then
charity := 0
end if
end if
netP := grossP - tax - charity

%clear screen
put ""
put "Input any character to continue to output: " ..
clearscreen := getchar()
cls

%Output #1
put "Employee: ", lastNAME, ", ", firstNAME
put "Pay Rate: $", rate : 0 : 2, "\tHours Worked: ", hour : 0 : 2
put "Regular Pay: $", regularP : 0 :2, "\tOvertime Pay: $", overtimeP : 0 : 2, "\tGross Pay: $", grossP : 0 : 2
put "Deductions: " 
put "Income tax: $", tax : 0 : 2, "\tCharity: $", charity
put "Net Pay: $", netP : 0 : 2

%Clear screen to go on to next level
put ""
put "Press any button to get accurate income based on data this year: " ..
clearscreen := getchar()
cls

%Tax with real data in 2018 (according to "Combined Federal & Ontario", "Taxable Income")
%LEVEL 4
estimatedYrSal := grossP * 48 
if estimatedYrSal <= 42960 then
tax := estimatedYrSal*20.05/100
else if estimatedYrSal > 42960 and estimatedYrSal <= 46605 then
tax := 42960*20.05/100 + (estimatedYrSal - 42960)*24.15/100
else if estimatedYrSal > 46605 and estimatedYrSal <= 75657 then
tax := 42960*20.05/100 + (46605-42960)*24.15/100 + (estimatedYrSal - 46605)*29.65/100
else if estimatedYrSal > 75657 and estimatedYrSal <= 85923 then
tax := 42960*20.05/100 + (46605-42960)*24.15/100 + (75657-46605)*29.65/100 + (estimatedYrSal - 75657)*31.48/100
else if estimatedYrSal > 85923 and estimatedYrSal <= 89131 then
tax := 42960*20.05/100 + (46605-42960)*24.15/100 + (75657-46605)*29.65/100 + (85923-75657)*31.48/100 + (estimatedYrSal - 85923)*33.89/100
else if estimatedYrSal > 89131 and estimatedYrSal <= 93208 then
tax := 42960*20.05/100 + (46605-42960)*24.15/100 + (75657-46605)*29.65/100 + (85923-75657)*31.48/100 + (89131 - 85923)*33.89/100 + (estimatedYrSal - 89131)*37.91/100
else if estimatedYrSal > 93208 and estimatedYrSal <= 144489 then
tax := 42960*20.05/100 + (46605-42960)*24.15/100 + (75657-46605)*29.65/100 + (85923-75657)*31.48/100 + (89131 - 85923)*33.89/100 + (93208 - 89131)*37.91/100 + (estimatedYrSal - 93208)*43.41/100
else if estimatedYrSal > 144489 and estimatedYrSal <= 150000 then
tax := 42960*20.05/100 + (46605-42960)*24.15/100 + (75657-46605)*29.65/100 + (85923-75657)*31.48/100 + (89131 - 85923)*33.89/100 + (93208 - 89131)*37.91/100 + (144489 - 93208)*43.41/100 + (estimatedYrSal - 144489)*46.41/100
else if estimatedYrSal > 150000 and estimatedYrSal <= 205842 then
tax := 42960*20.05/100 + (46605-42960)*24.15/100 + (75657-46605)*29.65/100 + (85923-75657)*31.48/100 + (89131 - 85923)*33.89/100 + (93208 - 89131)*37.91/100 + (144489 - 93208)*43.41/100 + (150000 - 144489)*46.41/100 + (estimatedYrSal - 150000)*47.97/100
else if estimatedYrSal > 205842 and estimatedYrSal <= 220000 then
tax := 42960*20.05/100 + (46605-42960)*24.15/100 + (75657-46605)*29.65/100 + (85923-75657)*31.48/100 + (89131 - 85923)*33.89/100 + (93208 - 89131)*37.91/100 + (144489 - 93208)*43.41/100 + (150000 - 144489)*46.41/100 + (205842 - 150000)*47.97/100 + (estimatedYrSal - 205842)*51.97/100
else if estimatedYrSal > 220000 then
tax := 42960*20.05/100 + (46605-42960)*24.15/100 + (75657-46605)*29.65/100 + (85923-75657)*31.48/100 + (89131 - 85923)*33.89/100 + (93208 - 89131)*37.91/100 + (144489 - 93208)*43.41/100 + (150000 - 144489)*46.41/100 + (205842 - 150000)*47.97/100 + (220000 - 205842)*51.97/100 + (estimatedYrSal - 220000)*53.53/100
end if
end if
end if
end if
end if
end if
end if
end if
end if
end if 
end if

%Assigning value for output #3
regularP := regularP*48
overtimeP := overtimeP*48
grossP := estimatedYrSal
charity := charity*48
netP := estimatedYrSal - tax - charity

%Output #2
put "Employee: ", lastNAME, ", ", firstNAME
put "Pay Rate: $", rate : 0 : 2, "\tHours Worked: ", hour : 0 : 2
put "Regular Pay: $", regularP : 0 :2, "\tOvertime Pay: $", overtimeP : 0 : 2, "\tGross Pay: $", grossP : 0 : 2
put "Deductions: " 
put "Income tax: $", tax : 0 : 2, "\tCharity: $", charity
put "Net Pay: $", netP : 0 : 2






