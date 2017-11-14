function midLetter(word : string) : char
	result word(length(word) div 2 + 1)
end midLetter

% main program

var word : string
put "Enter a word : "..
get word
put midLetter(word)
