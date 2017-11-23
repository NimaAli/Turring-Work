import GUI

var tf1, tf2, L, q : int

procedure plusOne (word:string)
    var worrd: string
    worrd := strint(word)+1
    GUI.SetText(tf2, word)
end plusOne

procedure inCase (word : string)
    var userInput : string := GUI.GetText(tf1)
    userInput := strint (userInput) +1
    GUI.SetText (tf2, userInput)
end inCase

tf1 := GUI.CreateTextField(40, 40, 100, "Here", plusOne)
tf2 := GUI.CreateTextField(80, 35, 100, "", inCase)
q := GUI.CreateButton (20, 20, 50, "Quit", GUI.Quit)
L := GUI.CreateLabel(40, 42+GUI.GetHeight(tf1), "Enter a number")

loop
    exit when GUI.ProcessEvent
end loop
