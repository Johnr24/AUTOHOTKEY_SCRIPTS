#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 1
oCB := ClipboardAll ; save clipboard contents
MouseGetPos x, y
SendEvent {Click, 2195, 1664}
Sleep 10
;double click
SendEvent {Click, 2841, 1911}
SendEvent {Click, 2841, 1911}
;copy script
SendEvent, ^c 
ClipWait,1
clipboard -= 0.05
SendEvent %clipboard% 
Clipboard := oCB ; return original Clipboard contents return
Send, {Enter}
SendEvent {Click, 1902, 1667} ;commented out for now
Sleep 10
MouseMove %x%, %y%