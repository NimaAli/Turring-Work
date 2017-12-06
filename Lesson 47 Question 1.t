import GUI

var MakeUppercase : int
var textField1, textField2 : int
var quitButton : int

procedure pro_tf1_Uppercase (word : string)
    var new_word : string := ""
    for i : 1 .. length (word)
	if word (i) >= "a" and word (i) <= "z" then
	    new_word += chr (ord (word (i)) - ord ("a") + ord ("A"))
	else
	    new_word += word (i)
	end if
    end for
    GUI.SetText (textField2, new_word)
end pro_tf1_Uppercase

procedure pro_tf2_nothing (word : string)
end pro_tf2_nothing

procedure MakeUppercasePro
    var new_word : string := ""
    var word : string
    word := GUI.GetText (textField1)
    for i : 1 .. length (word)
	if word (i) >= "a" and word (i) <= "z" then
	    new_word += chr (ord (word (i)) + ord ("A") - ord ("a"))
	else
	    new_word += word (i)
	end if
    end for
    GUI.SetText (textField2, new_word)
end MakeUppercasePro

MakeUppercase := GUI.CreateButton (100, 20, 50, "Make Uppercase", MakeUppercasePro)
quitButton := GUI.CreateButton (20, 20, 50, "Quit", GUI.Quit)
textField1 := GUI.CreateTextField (20, 100, 550, "", pro_tf1_Uppercase)
textField2 := GUI.CreateTextField (100, 200, 550, "", pro_tf2_nothing)

loop
    exit when GUI.ProcessEvent
end loop
