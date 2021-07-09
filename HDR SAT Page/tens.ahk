#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

FileAppend, (on), C:\temp\hdrtens.txt

IfExist, C:\temp\hdrtens.txt
{
FileDelete, C:\temp\hdrones.txt
FileDelete, C:\temp\hdrtwos.txt
FileDelete, C:\temp\hdrfives.txt
FileDelete, C:\temp\hdr25s.txt
FileDelete, C:\temp\hdrfulls.txt
FileDelete, C:\temp\hdrhalfs.txt
FileDelete, C:\temp\hdrdoubles.txt
}
