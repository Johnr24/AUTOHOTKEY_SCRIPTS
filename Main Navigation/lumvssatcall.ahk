#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

MouseGetPos x, y
MouseMove, %curves%, %tby%
SendEvent, {click, %curves%, %tby%}
MouseMove   %lumvssat%, %cya%
SendEvent, {Click %lumvssat% , %cya% }
MouseMove %x%, %y%
ExitApp