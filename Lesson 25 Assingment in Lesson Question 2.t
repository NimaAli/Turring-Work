var word : string
var biggest : string := ""
put "Enter ten words and I'll output the biggest word"
for count : 1 .. 10
    get word
    if strintok(word) then
	put "Enter a word, or at least don't enter numbers"
    elsif length(word) > length(biggest) then
	biggest := word
    end if
end for
put "The longest word(s) is/are ", biggest, "."
