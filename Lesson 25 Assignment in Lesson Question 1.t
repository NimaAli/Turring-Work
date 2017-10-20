var word : string
put "Enter done when you're done"
loop
    put "Enter a word: "
    get word
    exit when word = "done" 
    if strintok(word) then
	put "Enter a word, or at least don't enter numbers"
    elsif length(word) > 2 then
	put word(1)..
	put word(*)
    else 
	put "Enter a word, that is more than 2 letters."
    end if
end loop
color (red)
put "Thanks for using my program!"

