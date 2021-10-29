#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag
#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk
FileDelete, C:\temp\keysuspend.txt
FileAppend, (on), C:\temp\keysuspend.txt
Sleep, 300

bigcunt:
IfExist, C:\temp\mt\curves.txt
{
    supermacro = %curves%
    Goto, mod
}
Else
IfExist, C:\temp\mt\colourwarper.txt
{
    supermacro = %colourwarper%
    Goto, mod
}
Else
IfExist, C:\temp\mt\keyer.txt
{
    supermacro = %qualifer%
    Goto, mod
}
Else
IfExist, C:\temp\mt\window.txt
{
    supermacro = %powerwindow%
    Goto, mod
}
Else
IfExist, C:\temp\mt\tracker.txt
{
    supermacro = %tracker%
    Goto, mod
}
Else
IfExist, C:\temp\mt\magicmask.txt
{
    supermacro = %magicmask%
    Goto, mod
}
Else
IfExist, C:\temp\mt\keywindow.txt
{
    supermacro = %keytool%
    Goto, mod
}
Else
IfExist, C:\temp\mt\sizing.txt
{
    supermacro = %sizing%
    Goto, mod
}
Else
IfExist, C:\temp\mt\blur.txt
{
    supermacro = %blurtool%
    Goto, mod
}



Goto, bigcunt

mod:
MouseGetPos x, y
MouseMove %keytool%, %tby%
SendEvent {Click, %keytool%, %tby%}
Sleep 50
SendEvent {Click, %1stcollum%, %keyoutputgain%}
SendEvent {Click, %1stcollum%, %keyoutputgain%}
Sleep 50
SendEvent, ^c 
ClipWait,1

clipboard -= 0.05

SendEvent %clipboard% 
Clipboard := oCB ; return original Clipboard contents return
Send, {Enter}
Sleep 50
MouseMove %supermacro%, %tby%
SendEvent {Click, %supermacro%, %tby%}
MouseMove %x%, %y%
Sleep, 300
FileDelete, C:\temp\keysuspend.txt
exitapp