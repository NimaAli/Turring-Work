var randnum : int := 0
var num : int
randint(randnum, 1, 100)
put "Guess a number between 1 and 100 that the computer generated : "..
loop
    get num
    exit when randnum = num
    if num < randnum then
	put "Nope, the number is greater than that!"
    else
	put "Nah, the number is smaller than that!"
    end if
end loop
put "Congrats!  You guessed it."
