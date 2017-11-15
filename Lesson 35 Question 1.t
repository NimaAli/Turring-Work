procedure skrrr ( word : string, n : int ) 
    for i : 1..n 
	put word
    end for
end skrrr

% main program

var word : string
var n : int
put "Enter a word which will be repeated for the amount of times you specified, which you should enter after the word : "..
get word
get n
skrrr (word, n)
