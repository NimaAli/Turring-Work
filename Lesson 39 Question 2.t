import GUI

var tf1, tf2 : int
var L : int
var q : int

procedure LoseVowel (word : string)
    var new_word : string := ""
    for i : 1 .. length (word)
	if (index ("AEIOUaeiou", word (i))) =0 then
	    new_word += word (i)
	end if
    end for
    GUI.SetText (tf2, new_word)
end LoseVowel

procedure InCase (word : string)
    var new_word, worrd : string := ""
    worrd := GUI.GetText (tf1)
    for i : 1 .. length (word)
	if not (index ("AEIOUaeiou", word (i))) =0 then
	    new_word += word (i)
	end if
    end for
    GUI.SetText (tf2, new_word)
end InCase

q := GUI.CreateButton (20, 20, 50, "Quit", GUI.Quit)

tf1 := GUI.CreateTextField (70, 70, 200, "Erase This and input Here", LoseVowel)
tf2 := GUI.CreateTextField (280, 50, 100, "", InCase)

L := GUI.CreateLabel (70, 72 + GUI.GetHeight (tf1), "Input A Word")

loop
    exit when GUI.ProcessEvent
end loop
