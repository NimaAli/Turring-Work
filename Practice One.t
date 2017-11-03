% Find the average word length out of 10 words, output the 
% longest and shortest words and words with a length of 3.
var word : string
var long, short : string := ""
var allword : string := ""
var totalword : int := 0
put "Enter ten words for some facts : "..
for i : 1 .. 10
    get word 
    if length(word) = 3 then
	put word," contains three letters."
    end if
    if word > long then
	long := word
    end if
    if word < short then
	short := word
    end if
    allword += word 
    totalword += 1
end for
put "The longest word is ", long," and the shortest is ", short," with the total average of letters being ", length(allword)/totalword," letters."       
