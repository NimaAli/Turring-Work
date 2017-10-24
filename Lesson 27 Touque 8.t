var word : string
var new_word : string := ""
var letter : char
put "Enter a word so its consonents become capitals"
get word
for i : 1 .. length (word)
    if index ("aeiouAEIOU", word (i)) = 0 then
	letter := word (i)
	letter := chr(ord (letter) - ord ("a") + ord ("A"))
	put letter, "" ..
    else
	put word (i)..
    end if
end for
