#F20::
IfWinExist ahk_class screenClass
{
Send {Space} 
return
}
IfWinNotExist ahk_exe OneNote.exe
{
Run C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE
return
}
IfWinActive ahk_exe OneNote.exe
{
Send, {Alt down}{5}{Alt up}
return
}
IfWinExist ahk_exe OneNote.exe
{
WinActivate
return
}

#F19::
IfWinActive ahk_exe OneNote.exe
{
Send, {Alt down}{4}{Alt up}{x}
return
}	
IfWinExist ahk_class screenClass
{
Send {Left} 
return
}
else
{
    send, {Shift down}{LWin down}{s}
    Sleep, 500
    send, {Shift up}{LWin up}
    Sleep, 500
    return
}

#F18::
run ms-settings:tabletmode
sleep, 1000
send {space}
send {alt down}{F4}{alt up}

