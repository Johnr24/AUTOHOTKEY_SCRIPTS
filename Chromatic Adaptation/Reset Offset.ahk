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

;subroutine checker


OFXsearch := 000000
PixelGetColor, OFXsearch, 4025, 100  
FileAppend, %OFXsearch%, C:\temp\OFXsearch.txt]
OFXsearch:
If (OFXsearch = 0x212121) 
{
    Mousemove, 4040, 70
    sleep 10
    SendEvent, {Click, 4040, 70}
    sleep 30
    Goto, mod
}

mod:
IfExist, C:\temp\CA_target.txt 
{
    MouseGetPos x, y
    MouseMove 4067,212
    SendEvent {Click, 4067, 212}
    MouseMove %x%, %y%

    Exit
}

IfExist, C:\temp\CA_source.txt
{
      MouseGetPos x, y
    MouseMove 4067,326
    SendEvent {Click, 4067, 326}
    MouseMove %x%, %y%
}