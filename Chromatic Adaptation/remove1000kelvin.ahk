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

If (OFXsearch = 0x212121) 
{
    Mousemove, 4040, 70
    sleep 10
    SendEvent, {Click, 4040, 70}
    sleep 30    
}


IfExist, C:\temp\CA_target.txt 
{
    oCB := ClipboardAll ; save clipboard contents
    MouseGetPos x, y
    MouseMove 3983,214
    SendEvent {Click , 3983, 214}
    SendEvent {Click , 3985, 214} ; Sends Double Click
    Sleep 4
    SendEvent, ^c 
    ClipWait,1

    clipboard -= 1000

    SendEvent %clipboard% 
    Clipboard := oCB ; return original Clipboard contents return
    Send, {Enter}
    Sleep 4
    MouseMove %x%, %y%
    Exit
}

IfExist, C:\temp\CA_source.txt
{
    oCB := ClipboardAll ; save clipboard contents
    MouseGetPos x, y
    MouseMove 3983,322
    SendEvent {Click , 3983, 322}
    SendEvent {Click , 3985, 322} ; Sends Double Click
    Sleep 4
    SendEvent, ^c 
    ClipWait,1

    clipboard -= 1000

    SendEvent %clipboard% 
    Clipboard := oCB ; return original Clipboard contents return
    Send, {Enter}
    Sleep 4
    MouseMove %x%, %y%
    Exit, 
}