#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 4


#include %A_ScriptDir%\config.ahk



IfExist, C:\temp\hdrones.txt
{
MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove 2398, 2090
SendEvent {Click , 2398, 2090}
SendEvent {Click , 2398, 2090} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard += ones
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist  C:\temp\hdrtwos.txt
{
MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove 2398, 2090
SendEvent {Click , 2398, 2090}
SendEvent {Click , 2398, 2090} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard += twos
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrfives.txt
{
    MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove 2398, 2090
SendEvent {Click , 2398, 2090}
SendEvent {Click , 2398, 2090} ; Sends Double Click
Sleep 2
SendEvent, ^c
ClipWait,1

clipboard += fives
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrtens.txt
{
    MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove 2398, 2090
SendEvent {Click , 2398, 2090}
SendEvent {Click , 2398, 2090} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard += tens
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdr25s.txt
{
        MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove 2398, 2090
SendEvent {Click , 2398, 2090}
SendEvent {Click , 2398, 2090} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard += twentyfives
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrhalfs.txt
{
        MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove 2398, 2090
SendEvent {Click , 2398, 2090}
SendEvent {Click , 2398, 2090} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard += halfs
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrfulls.txt
{
        MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove 2398, 2090
SendEvent {Click , 2398, 2090}
SendEvent {Click , 2398, 2090} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard += fulls
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrdoubles.txt
{
        MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove 2398, 2090
SendEvent {Click , 2398, 2090}
SendEvent {Click , 2398, 2090} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard += doubles
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}


exit