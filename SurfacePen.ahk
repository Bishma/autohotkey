; Single Surface 4 top button click
#F20::
; if Onenote isn't open
IfWinNotExist ahk_exe OneNote.exe
{
    ; open it
    Run C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE
    return
}
; If Onenote is the active program
IfWinActive ahk_exe OneNote.exe
{
    ; trigger quick action 5 - in my case this open the pen choice dialog
    Send, {Alt down}{5}{Alt up}
    return
}
; if Onenote is open but not active
IfWinExist ahk_exe OneNote.exe
{
    ; make it the active program
    WinActivate
    return
}

; Double top button click
#F19::
; if Onenote is the active program
IfWinActive ahk_exe OneNote.exe
{
    ; trigger quick action 4 then press x - in my case this triggers Ink to Text
    Send, {Alt down}
    Sleep, 200
    Send, {Alt up}{4}{x}
    return
}	
; if Onenote is not the active program
else
{
    ; trigger Onenote clipper
    send, {Shift down}{LWin down}{s}
    Sleep, 500
    send, {Shift up}{LWin up}
    Sleep, 500
    return
}

; long top button press
#F18::
; toggle windows 10 tablet mode by opening the tablemode settings panel, sending a space to toggle the swtich, then closing the settings panel
run ms-settings:tabletmode
sleep, 1000
send {space}
send {alt down}{F4}{alt up}
return
