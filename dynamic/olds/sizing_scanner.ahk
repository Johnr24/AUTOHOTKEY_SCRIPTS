#SingleInstance, Force
#KeyHistory, 0
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

resolvecheck:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, colourtabcheck, %colourpage%, %pagebar%
    IfEqual, colourtabcheck, 0x000000
    {
        Goto, mod
    }
if not WinActive("ahk_exe Resolve.exe")
Goto, resolvecheck


sizingchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, key_c, %sizing%, %tby%
    IfEqual, key_c, 0x484848
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\sizingactive.exe
        FileAppend, on, C:\temp\mt\sizing.txt

        Goto, sizingchecker2
    }
    Else
    {
Goto, resolvecheck
    }


sizingchecker2:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, key_c, %sizing%, %tby%
IfEqual, key_c, 0x484848
{
    Goto, sizingchecker2
}
Else
{
    FileDelete, C:\temp\mt\sizing.txt
    Goto, resolvecheck
}