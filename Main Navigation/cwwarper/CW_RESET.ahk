#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

MouseGetPos x, y
MouseMove  %cw_reset%, %cw_selectmenu%
SendEvent, {Click , %cw_reset% , %cw_selectmenu% }
MouseMove %x%, %y%
ExitApp