import GUI

procedure Chill 
    put "Nima Is Most Beautiful 10/10  - Anonymous Source  }{  "..
end Chill

var quitButt_on : int 
var Butt_on : int

Butt_on := GUI.CreateButton(100, 100, 100, "Not Complements", Chill)
quitButt_on := GUI.CreateButton (210, 100, 100, "Doesn't End Program", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop

