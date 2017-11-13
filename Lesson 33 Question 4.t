function voweler (word : string) : string
    var new_word : string := 0
    for i : 1 .. length (word) 
        if index("aeiouAEIOU", word(i)) not= 0 then 
            new_word += word(i)
        else 
            new_word += "*"
        end if
    end for
    result new_word
end voweler

% main program

var word
put "Enter a word : "..
get word
put voweler (word)
