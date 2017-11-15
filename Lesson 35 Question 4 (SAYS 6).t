function a (word : string) : string
    var new_word : string := ""
    for i : 1 .. length (word)
	if index ("aA", word (i)) = 0 then
	    new_word += word (i)
	else
	    new_word += "aa"
	end if
    end for
    result new_word
end a

function b (word : string) : string
    var new_word : string := ""
    for i : 1 .. length (word)
	if index ("bB", word (i)) = 0 then
	    new_word += word (i)
	else
	    new_word += "c"
	end if
    end for
    result new_word

end b

function c (word : string) : string
    var new_word : string := ""
    var if_c : int
     randint (if_c, 1, length (word))
    for i : 1 .. length (word)
	if if_c = i then
	    new_word += "c"
	else
	    new_word += word (i)
	end if
    end for
    result new_word
end c


% main program

var word : string
var which_function : int
put "Enter a word : " ..
get word
for i : 1 .. 5
    randint (which_function, 1, 3)
    if which_function = 1 then
	word := a (word)
    elsif which_function = 2 then
	word := b (word)
    else
	word := c (word)
    end if
end for
put "The word now is : ", word, "."
