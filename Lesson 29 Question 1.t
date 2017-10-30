var word : string
var count : int

for i : 1 .. 5
    randint (count, 1, 8)
    put "Enter a word that is ",count ," letters long : " ..
    loop
	get word
	exit when length (word) = count
	put "Wrong amount of letters in ze word amigo."
    end loop
end for
