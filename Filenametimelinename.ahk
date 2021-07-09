#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
MouseGetPos x, y

;clearing the box
SendEvent {Click, 153, 212}
Sleep, 10
Send, ^{a}
Sleep, 20
Send {BackSpace}

;sending the timeline 
Sleep, 10
Send, `%Timeline
Send, {Down}
SendEvent {Enter}

;sending video name
Send, _V
MouseMove %x%, %y%
