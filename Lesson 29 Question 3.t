var roll : int
var total1, total2, total3, total4, total5, total6 : int := 0
for i : 1 .. 20
    randint (roll, 1, 6)
    if roll = 1 then
	total1 += 1
    elsif roll = 2 then
	total2 += 1
    elsif roll = 3 then
	total3 += 1
    elsif roll = 4 then
	total4 += 1
    elsif roll = 5 then
	total5 += 1
    else
	total6 += 1
    end if
end for
 % doesn't work right with case if I were to use puts only and an if statement to post the biggest one then it would work
case roll of
    label 1 :
	put "A one was rolled ", total1, " time(s)."
    label 2 :
	put "A two was rolled ", total2, " time(s)."
    label 3 :
	put "A three was rolled ", total3, " time(s)."
    label 4 :
	put "A four was rolled ", total4, " time(s)."
    label 5 :
	put "A five was rolled ", total5, " time(s)."
    label 6 :
	put "A six was rolled ", total6, " time(s)."
end case
