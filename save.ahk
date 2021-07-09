#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
MouseGetPos x, y

FormatTime, currenttime, , ss

IfExist, C:\temp\save.txt
{
FileRead, oldtime, C:\temp\save.txt
if (oldtime < currenttime + 2) {
MsgBox "SAVE"
}


}

else
{
FileAppend, %currenttime%, C:\temp\save.txt
MsgBox "LOAD"
}


MouseMove %x%, %y%
