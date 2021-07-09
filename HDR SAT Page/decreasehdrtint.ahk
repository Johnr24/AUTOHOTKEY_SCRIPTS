#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 4


#include %A_ScriptDir%\config.ahk
#include C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

IfExist, C:\temp\hdrones.txt
{
MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove %hdr_tint%, %hdr_lowertools%
SendEvent {Click , %hdr_tint%, %hdr_lowertools%}
SendEvent {Click , %hdr_tint%, %hdr_lowertools%} ; Sends Double Click
Sleep 1 
SendEvent, ^c   
ClipWait,1

clipboard -= %fast_ones_tint%
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist  C:\temp\hdrtwos.txt
{
MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove %hdr_tint%, %hdr_lowertools%
SendEvent {Click , %hdr_tint%, %hdr_lowertools%}
SendEvent {Click , %hdr_tint%, %hdr_lowertools%} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard -= fast_twos_tint
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrfives.txt
{
    MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove %hdr_tint%, %hdr_lowertools%
SendEvent {Click , %hdr_tint%, %hdr_lowertools%}
SendEvent {Click , %hdr_tint%, %hdr_lowertools%} ; Sends Double Click
Sleep 2
SendEvent, ^c
ClipWait,1

clipboard -= fast_fives_tint
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrtens.txt
{
    MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove %hdr_tint%, %hdr_lowertools%
SendEvent {Click , %hdr_tint%, %hdr_lowertools%}
SendEvent {Click , %hdr_tint%, %hdr_lowertools%} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard -= fast_tens_tint
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdr25s.txt
{
        MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove %hdr_tint%, %hdr_lowertools%
SendEvent {Click , %hdr_tint%, %hdr_lowertools%}
SendEvent {Click , %hdr_tint%, %hdr_lowertools%} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard -= fast_twentyfives_tint
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrhalfs.txt
{
        MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove %hdr_tint%, %hdr_lowertools%
SendEvent {Click , %hdr_tint%, %hdr_lowertools%}
SendEvent {Click , %hdr_tint%, %hdr_lowertools%} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard -= fast_halfs_tint
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrfulls.txt
{
        MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove %hdr_tint%, %hdr_lowertools%
SendEvent {Click , %hdr_tint%, %hdr_lowertools%}
SendEvent {Click , %hdr_tint%, %hdr_lowertools%} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard -= fast_fulls_tint
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}

IfExist, C:\temp\hdrdoubles.txt
{
        MouseGetPos x, y
oCB := ClipboardAll ; 
mousemove %hdr_tint%, %hdr_lowertools%
SendEvent {Click , %hdr_tint%, %hdr_lowertools%}
SendEvent {Click , %hdr_tint%, %hdr_lowertools%} ; Sends Double Click
Sleep 1
SendEvent, ^c
ClipWait,1

clipboard -= fast_doubles_tint
SendEvent %clipboard% 
Send, {Enter}
Clipboard := oCB 
MouseMove %x%, %y%
}


exit