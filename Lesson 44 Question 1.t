const TEN := 10
var high_temp : array 1 .. TEN of real

%1.a)
put "Enter the high temperatures of the past ten days : " ..
for i : 1 .. TEN
    get high_temp (i)
    put " " ..
end for
for n : TEN .. 1
    put high_temp (n)
end for

put skip
%1.b)
var average : real := 0
for e : 1 .. TEN
    average += high_temp (e)
end for
average /= TEN
put "The average is ", average, "."

put skip
%1.c)
var high, low : real := high_temp (1)
for f : 2 .. TEN
    if high_temp (f) > high then
	high := high_temp (f)
    end if
    if high_temp (f) < low then
	low := high_temp (f)
    end if
end for
put "The highest temperature was ", high, " and the lowest ", low, "."









