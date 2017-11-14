function rvs_word (word : string) : string
    var new_word : string := ""
    for decreasing i : length(word) .. 1
	new_word += word(i)
    end for
    result new_word
end rvs_word

function glue_word (word, word2 : string) : string
    var new_word : string := ""
    new_word := word+word2
    result new_word
end glue_word

function machine (word, word2, word3 : string) : string
    var new_word : string
    new_word := rvs_word(glue_word(word, word2))+word3
    result new_word
end machine

var word, word2, word3 : string
put "This program will combined and reverse the first two words given and add the third to those two who have been reversed."
put "Enter a first word : "..
get word
put "Enter a second word : "..
get word2
put "Enter a third word : "..
get word3
put machine(word, word2, word3)
% apparently you can add strings, just not multiply or subtract or divide em, ask Keras if you can!

