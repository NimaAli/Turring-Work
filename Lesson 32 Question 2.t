function num_fac (number : int) : int
    var EachNum, answer : int := number
    loop
	exit when EachNum = 1
	EachNum -= 1
	answer *= EachNum
    end loop
    result answer
end num_fac

% Main Program

var number : int := 0
var user_input : string := ""

put " If you enter done the program will end"
put "Enter a number to recieve its factorial : " ..
loop
    exit when number >= 1 or user_input = "done"
    get user_input

    if strintok (user_input) then
	number += strint (user_input)
	put "The factorial of your number is ", num_fac (number), " ."
    elsif user_input = "done" then
	put ""
    else
	put "Invalid!  Please put a positive interger : " ..
    end if
end loop

