var word : string
var total : int := 0
put "Enter a word to find the number of vowels in that word: "
loop
    get word
    for i : 1 .. length (word)
	if strintok (word) then
	    put "Enter a word, or at least no numbers plz."
	elsif word (i) = "a" or word (i) = "i" or word (i) = "e" or word (i) = "u" or word (i) = "o" then
	    total += 1
	end if
    end for
    put total, " vowel(s) are in your  word."
    total := 0
end loop
