% If want to study make this program robust.  Ken did this best!

import GUI

var tf1, tf2 : int
var celsius_button, farenheit_button : int
var quit_button : int
var label_celsius, label_farenheit : int

Window.Set(defWinId, "title: Celsius and Farenheit Converter")
GUI.SetBackgroundColour(blue)

procedure Celsius_To_Farenheit
    var celsius : real
    var farenheit : real
    celsius := strreal (GUI.GetText (tf1))
    farenheit := celsius * 9 / 5 + 32
    GUI.SetText (tf2, realstr (farenheit, 0))
end Celsius_To_Farenheit

procedure Farenheit_To_Celsius
    var celsius : real
    var farenheit : real
    farenheit := strreal (GUI.GetText (tf2))
    celsius := (farenheit - 32) * 5 / 9
    GUI.SetText (tf1, realstr (celsius, 0))
end Farenheit_To_Celsius

procedure for_tf1 (celsius_input : string)
    var celsius : real
    var farenheit : real
    celsius := strreal (celsius_input)
    farenheit := celsius * 9 / 5 + 32
    GUI.SetText (tf2, realstr (farenheit, 0))
end for_tf1

procedure for_tf2 (farenheit_input : string)
    var celsius : real
    var farenheit : real
    farenheit := strreal (farenheit_input)
    celsius := (farenheit - 32) * 5 / 9
    GUI.SetText (tf1, realstr (celsius, 0))
end for_tf2

tf1 := GUI.CreateTextField (11, 120, 200, "", for_tf1)
tf2 := GUI.CreateTextField (maxx - 200, 120, 200, "", for_tf2)
label_celsius := GUI.CreateLabel (200, 120+GUI.GetHeight(tf1), "Enter Celsius Here")
label_farenheit := GUI.CreateLabel (maxx - 200, 120+GUI.GetHeight(tf2), "Enter Farenheit Here")
quit_button := GUI.CreateButton (maxx div 2, 100, 100, "Quit", GUI.Quit)
celsius_button := GUI.CreateButton (3*(maxx div 4), 50, 200, "For Celsius", Farenheit_To_Celsius)
farenheit_button := GUI.CreateButton (maxx div 4, 50, 200, "For Farenheit", Celsius_To_Farenheit)

loop 
    exit when GUI.ProcessEvent
end loop
