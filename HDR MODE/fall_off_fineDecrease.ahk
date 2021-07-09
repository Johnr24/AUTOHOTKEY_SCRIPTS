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
SetDefaultMouseSpeed, 4
oCB := ClipboardAll ; save clipboard contents
MouseGetPos x, y
MouseMove 2733,2096
SendEvent {Click , 2733, 2096}
SendEvent {Click , 2733, 2096} ; Sends Double Click
Sleep 2
SendEvent, ^c 
ClipWait,1

clipboard -= 0.01

SendEvent %clipboard% 
Clipboard := oCB ; return original Clipboard contents return
Send, {Enter}
Sleep 10
MouseMove %x%, %y%