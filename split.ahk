#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
MouseGetPos x, y

IfExist, C:\temp\split.txt
{
FileRead, current, C:\temp\split.txt
}
else
{
current = 1
}


SendEvent {Click, 384,7}
Sleep, 20
SendEvent {Click, 384,505}
Sleep, 20
MouseMove 732, 502
Sleep, 20
offset := current * 20
selection := offset + 515

SendEvent {Click, 735,%selection%}


if (current = 7) {
current = 1
}
else {
current++
}

FileDelete, C:\temp\split.txt
FileAppend, %current%, C:\temp\split.txt


MouseMove %x%, %y%
