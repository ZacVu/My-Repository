% Input Integer
var _1stN, _2ndN, _3rdN: int
put "Please enter a POSITIVE INTEGER: " ..
get _1stN
if _1stN < 0 then loop
put "Wrong input. Please enter a POSITIVE INTEGER: " ..
get _1stN
exit when (_1stN >= 0)
end loop
end if
put "Please enter a POSITIVE INTEGER: " ..
get _2ndN
if _2ndN < 0 then loop
put "Wrong input. Please enter a POSITIVE INTEGER: " ..
get _2ndN
exit when (_2ndN >= 0)
end loop
end if
put "Please enter a POSITIVE INTEGER: " ..
get _3rdN
if _3rdN < 0 then loop
put "Wrong input. Please enter a POSITIVE INTEGER: " ..
get _3rdN
exit when (_3rdN >= 0)
end loop
end if
put " "
var units: string
put "Units: " ..
get units
% I can't find another way so I used this
procedure printText (text: string)
for i : 1 .. 1
	Text.Color ( i )
	put text ..
    end for
    end printText
procedure printInt (integer: int)
for i : 1 .. 1
	Text.Color ( i )
	put integer ..
    end for
    end printInt
procedure printReal (realN: real)
for i : 1 .. 1
	Text.Color ( i )
	put realN ..
    end for
    end printReal
procedure printVoid (void: string)
put void ..
end printVoid
put " "
put "=================================================================" 
% 1a, 1b)
put "Part 1a, 1b: Rectangular Prism (box) Calculations"
put " "
var lw, wh, lh: int
var v, SA: real
lw := _1stN
wh := _2ndN
lh := _3rdN
v := lw*wh*lh
SA := 2*(lw+wh+lh) 
put "Length = " .. printInt (_1stN) printText(units) %"  Width = ", _2ndN, units, "  Height = ", _3rdN, units
put "Volume = ", v : 0 :2, units, "^3  Surface Area = ", SA : 0 :2, units, "^2"
put "================================================================="
% 2)
put "Part 2: Interest Income"
put " "
var P, i, n: int
var A: real
P := _1stN * 1000
i := _2ndN
n := _3rdN
A := P*((1 + i/100)**n)
put "Principal = $", P, "  interest = ", i, "%  term = ", n, "years"
put "Final Amount of Investment = $", A : 0 : 2 
put "================================================================="
% 3)
var x, y, z: int
x := _1stN
y := _2ndN
z := _3rdN
put "Part 3: Distance from O(0, 0, 0) to P( ", x, ", ", y, ", ", z, " )"
put " "
var d: real
d := sqrt(x**2 + y**2 + z**2)
put "Distance from O(0, 0, 0) to P( ", x, ", ", y, ", ", z, " ) = ", d : 0 : 1
put "================================================================="
% 4a, 4b)
put "Part 4a, 4b: Triangular Prism (pyramid) Calculations"
put " "
var HEIGHTprism, Btri, Hs: int
HEIGHTprism := _1stN
Btri := _2ndN
Hs := _3rdN
var Atri, Htri, Vprism, SAprism: real
if Hs**2-(1/2*Btri)**2 <= 0 then put "Sorry, the input is insufficient to complete this exercise."
else
Htri := sqrt(Hs**2-(1/2*Btri)**2)
Atri := 1/2*Btri*Htri
Vprism := Atri*HEIGHTprism
SAprism := 2*Atri + HEIGHTprism*Btri + 2*HEIGHTprism*Hs
put "Prism Height = ", HEIGHTprism, "  Triangle Base = ", Btri, "  Height of Side = ", Hs
put "Volume = ", Vprism : 0 : 3, units, "^3  Surface Area = ", SAprism : 0 : 3, units, "^2"
end if
put "================================================================="
% 4c)
put "Part 4c: Circular Trunvated Cone Calculations"
put " "
var Rbase, HEIGHTcone, Rtop: int
Rbase := _1stN
HEIGHTcone := _2ndN
Rtop := _3rdN
var Vcone, SAcone, LateralAcone: real % LateralA = Area around the shape
Vcone := 1/3*Math.PI*(Rtop**2 + Rtop*Rbase + Rbase**2)*HEIGHTcone
LateralAcone := Math.PI*(Rtop + Rbase)*sqrt((Rbase - Rtop)**2 + HEIGHTcone**2)
SAcone := LateralAcone + Math.PI*(Rtop**2 + Rbase**2)
put "Upper Radius = ", Rtop, "  Height = ", HEIGHTcone, "  Lower Radius = ", Rbase
put "Volume = ", Vcone : 0 : 3, units, "^3  Surface Area = ", SAcone : 0 : 3, units, "^2" 
%The symbol ^ doesn't seem to work



