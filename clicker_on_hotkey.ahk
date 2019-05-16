F2::
SetTitleMatchMode, regex
SetDefaultMouseSpeed, 5

IfWinExist NameOfTheWindowToClickIn, 
{
    WinActivate
}
Send {Click, 1380, 480}
sleep 250
SendInput {Raw}SomeText
sleep 250
Send {WheelDown}
Return

F4::
SetTitleMatchMode, regex
SetDefaultMouseSpeed, 5

IfWinExist NameOfTheWindowToClickIn, 
{
    WinActivate
}
SendInput {Raw}SomeOtherText
sleep 250
Send {Click, 1380, 520}
sleep 250
Send {WheelDown}
Return

~Esc::Reload