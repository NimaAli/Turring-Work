function rvs_word (user_word : string) : string
    var new_word : string := ""
    for i : length (user_word) .. 1
	new_word += user_word (i)
    end for
    result new_word
end rvs_word


function program_word (rand_word : int) : string
    var new_word1 : string := ""
    var letter : int
    for i : 1 .. rand_word
	randint (letter, 75, 122)
	new_word1 += chr (letter)
    end for
    result new_word1
end program_word


var user_word : string
var rand_word : int
var rand_word_result, user_word_rvs_result, rand_word_rvs_result : string
randint (rand_word, 1, 8)
rand_word_result := program_word (rand_word)
put "The word-thing the program chose is ", rand_word_result, " ."
put "Input a word to get it reversed along with the program's word : " ..
get user_word
user_word_rvs_result := rvs_word (user_word)
rand_word_rvs_result := rvs_word (rand_word_result)
put skip, "Your word now is ", user_word_rvs_result, " and the program's is ", rand_word_rvs_result, " ."
