var second, winA, winB, winC, winD, timeA, timeB, timeC, timeD, a, b, c, d, wintime : int
var winner : string
second := 0
timeA := 0
timeB := 0
timeC := 0
timeD := 0
a := 0
b := 0
c := 0
d := 0
loop
    exit when (a >= 100 and b >= 100 and c >= 100 and d >= 100)
    second := second + 1
    if a < 100 then
	timeA := timeA + 1
	a := a + Rand.Int (5, 15)
	put "The position of racer A in ", second, " second(s) is: ", a
    elsif a >= 100 then
	put "Runner A has finished the race."
    end if
    if b < 100 then
	timeB := timeB + 1
	b := b + Rand.Int (5, 15)
	put "The position of racer B in ", second, " second(s) is: ", b
    elsif b >= 100 then
	put "Runner B has finished the race."
    end if
    if c < 100 then
	timeC := timeC + 1
	c := c + Rand.Int (5, 15)
	put "The position of racer C in ", second, " second(s) is: ", c
    elsif c >= 100 then
	put "Runner C has finished the race."
    end if
    if d < 100 then
	timeD := timeD + 1
	d := d + Rand.Int (5, 15)
	put "The position of racer D in ", second, " second(s) is: ", d
    elsif d >= 100 then
	put "Runner D has finished the race."
    end if

    delay (500)
    cls
end loop

if timeA > timeB then
    wintime := timeB
else
    wintime := timeA
end if
if wintime >= timeC then
    wintime := timeC
    end if
if wintime >= timeD then
    wintime := timeD
end if
put wintime
if wintime = timeA
then winA = a
else winA = 0
end if
if wintime = timeB
then winB = b
else winB = 0
end if
if wintime = timeC
then winC = c
else winC = 0
end if
if wintime = timeD
then winD = d
else winD = 0
end if
if winA > winB

