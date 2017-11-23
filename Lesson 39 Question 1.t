import GUI

var quitButton : int
var textField1, textField2 : int
var Label, Warning, Warning2 : int

procedure cmToInches (cm : string)
    var inches : real
    var output : string
    inches := strreal (cm) / 2.54
    output := intstr(round(inches)) 
    GUI.SetText (textField2, output)
end cmToInches

procedure justInCase (cm : string)
    var inches : real
    var output : string
    output := intstr (round (inches))
    inches := strreal (GUI.GetText (textField1)) / 2.54
    GUI.SetText (textField2, output)
end justInCase

textField1 := GUI.CreateTextField (50, 50, 100, "Here", cmToInches)

Label := GUI.CreateLabel (55, 50 + GUI.GetHeight (textField1), "Enter an amount of cm")
Warning := GUI.CreateLabel (53, 200, "The converted to inches amount is rounded")
Warning2 := GUI.CreateLabel (53, 160, "Please just enter a number and remove the here")

textField2 := GUI.CreateTextField (50, 45 - GUI.GetHeight (textField1), 100, "", justInCase)

quitButton := GUI.CreateButton (300, 30, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
