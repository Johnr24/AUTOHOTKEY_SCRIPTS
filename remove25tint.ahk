#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 4
oCB := ClipboardAll ; save clipboard contents
MouseGetPos x, y
MouseMove 3985,442
SendEvent {Click , 3985, 442}
SendEvent {Click , 3985, 442} ; Sends Double Click
Sleep 10
SendEvent, ^c 
ClipWait,1

clipboard -= 25

SendEvent %clipboard% 
Clipboard := oCB ; return original Clipboard contents return
Send, {Enter}
Sleep 10
MouseMove %x%, %y%