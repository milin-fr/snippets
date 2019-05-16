#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
#SingleInstance Force

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, regex
SetDefaultMouseSpeed, 5
autotrim, On
FileEncoding, UTF-8
CoordMode, Pixel, Screen


variable_1 := "text_1"
variable_2 := "text_2"
variable_3 := "text_3"
variable_4 := "text_4"
variable_5 := "text_5"
variable_6 := "text_6"
variable_7 := "text_7"
variable_8 := "text_8"

IfNotExist, clicker_config_file.ini
    {
    IniWrite, 1984, clicker_config_file.ini, first_button_to_click, x
    IniWrite, 1984, clicker_config_file.ini, first_button_to_click, y
    IniWrite, 1984, clicker_config_file.ini, second_button_to_click, x
    IniWrite, 1984, clicker_config_file.ini, second_button_to_click, y
    IniWrite, 1984, clicker_config_file.ini, third_button_to_click, x
    IniWrite, 1984, clicker_config_file.ini, third_button_to_click, y
    IniWrite, 1984, clicker_config_file.ini, fourth_button_to_click, x
    IniWrite, 1984, clicker_config_file.ini, fourth_button_to_click, y
    IniWrite, 1984, clicker_config_file.ini, fifth_button_to_click, x
    IniWrite, 1984, clicker_config_file.ini, fifth_button_to_click, y
    Run Edit "clicker_config_file.ini"
    }


what_happens_when_i_press_the_button(text_variable)
{
	IniRead, first_button_to_clickX, clicker_config_file.ini, first_button_to_click, x
    IniRead, first_button_to_clickY, clicker_config_file.ini, first_button_to_click, y
    IniRead, second_button_to_clickX, clicker_config_file.ini, second_button_to_click, x
    IniRead, second_button_to_clickY, clicker_config_file.ini, second_button_to_click, y
    IniRead, third_button_to_clickX, clicker_config_file.ini, third_button_to_click, x
    IniRead, third_button_to_clickY, clicker_config_file.ini, third_button_to_click, y
    IniRead, fourth_button_to_clickX, clicker_config_file.ini, fourth_button_to_click, x
    IniRead, fourth_button_to_clickY, clicker_config_file.ini, fourth_button_to_click, y
    IniRead, fifth_button_to_clickX, clicker_config_file.ini, fifth_button_to_click, x
    IniRead, fifth_button_to_clickY, clicker_config_file.ini, fifth_button_to_click, y
    GuiControlGet, RegCode
    GuiControlGet, Input1
    GuiControlGet, Input2
    GuiControlGet, Input3
	text_from_clipboard := Clipboard
    input_variable_1 := Input1
    input_variable_2 := Input2
    input_variable_3 := Input3
    IfWinExist Window_name_to_click_in, 
    {
        WinActivate
    }
    Send {Click, %first_button_to_clickX%, %first_button_to_clickY%}
    sleep 1000
    SendInput {Raw}%text_from_clipboard%
    sleep 1500
    Send {Click, %second_button_to_clickX%, %second_button_to_clickY%}
    sleep 1000
    SendInput {Raw}%text_variable%
    sleep 1000
    Send {Enter}
    Send {Click, %third_button_to_clickX%, %third_button_to_clickY%}
    sleep 1000
    Send {Click, %fourth_button_to_clickX%, %fourth_button_to_clickY%}
    sleep 250
    SendInput {Raw}%input_variable_1%
    sleep 250
    Send {Right}
    sleep 250
    Send {Right}
    sleep 250
    Send {Right}
    sleep 250
    Send {Right}
    sleep 250
    Send {Right}
    sleep 250
    SendInput {Raw}pm
    Send {Left}
    sleep 250
    SendInput {Raw}%input_variable_3%
    sleep 250
    Send {Left}
    sleep 250
    SendInput {Raw}%input_variable_2%
    sleep 250
    Send {Click, %fifth_button_to_clickX%, %fifth_button_to_clickY%}
    return
}



Gui, New, hwndhGui AlwaysOnTop Resize MinSize
Gui, Show, w340 h260, App name v12345
Gui, Add, Button, x30 y10 w120 h30 gbutton_1, button_1
Gui, Add, Button, x30 y50 w120 h30 gbutton_2, button_2
Gui, Add, Button, x30 y90 w120 h30 gbutton_3, button_3
Gui, Add, Button, x30 y130 w120 h30 gbutton_4, button_4
Gui, Add, Button, x200 y10 w120 h30 gbutton_5, button_5
Gui, Add, Button, x200 y50 w120 h30 gbutton_6, button_6
Gui, Add, Button, x200 y90 w120 h30 gbutton_7, button_7
Gui, Add, Button, x200 y130 w120 h30 gbutton_8, button_8
Gui, Add, Text,x30 y180, input1 here:
Gui, Add, Edit, x100 y180 w20 h20 vInput1
Gui, Add, Text,x200 y180, input2and3 here:
Gui, Add, Edit, x283 y180 w20 h20 vInput2, 05
Gui, Add, Edit, x300 y180 w20 h20 vInput3, 00
Gui, Add, Text,x30 y200, Press "F2" to get current mouse coordinates
Gui, Add, Link,x30 y220, SomeLinkHere <a href="https://www.google.com">Link</a>
return


~F2::
    GetMousePosition()
    return

GetMousePosition(){
    IfWinExist Window_name_to_inspect, 
        {
        WinActivate
        }
    MouseGetPos, xpos, ypos
    MsgBox, 4096, Mouse position, The cursor is at X: %xpos% Y: %ypos%. 
}

button_1:
what_happens_when_i_press_the_button(variable_1)
return

button_2:
what_happens_when_i_press_the_button(variable_2)
return

button_3:
what_happens_when_i_press_the_button(variable_3)
return

button_4:
what_happens_when_i_press_the_button(variable_4)
return

button_5:
what_happens_when_i_press_the_button(variable_5)
return

button_6:
what_happens_when_i_press_the_button(variable_6)
return

button_7:
what_happens_when_i_press_the_button(variable_7)
return

button_8:
what_happens_when_i_press_the_button(variable_8)
return

GuiClose:
ExitApp

~Esc::Reload