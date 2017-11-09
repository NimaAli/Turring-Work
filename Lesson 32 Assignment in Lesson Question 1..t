function sub_5 (number : real) : real
    var new_number : real
    new_number := number - 5
    result new_number
end sub_5

% main program

var number : real 
put "Enter a number to get it subtracted by 5 : "..
get number
put sub_5(number)




