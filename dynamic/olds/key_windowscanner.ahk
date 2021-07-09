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
    CoordMode, Pixel
    PixelGetColor, colourtabcheck, %colourpage%, %pagebar%
    IfEqual, colourtabcheck, 0x000000
    {
        Goto, mod
    }
if not WinActive("ahk_exe Resolve.exe")
Goto, resolvecheck


keywindowchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, keywindow_c, %keytool%, %tby%
    IfEqual, keywindow_c, 0xFFFFFF
    {
        Goto, keystopcheck

    }
    Else
    {
Goto, sizingchecker
    }


keywindowcheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, keywindow_c,  %keytool%, %tby%
IfEqual, keywindow_c, 0xFFFFFF
{
    Goto, keywindowcheckeroff
}
Else
{
    FileDelete, C:\temp\mt\keywindow.txt
    Goto, resolvecheck
}

keystopcheck:
IfExist, C:\temp\keysuspend.txt
{

    Goto, resolvecheck
}
Else
Goto, keywindowdoublecheck
keywindowdoublecheck:
if WinActive("ahk_exe Resolve.exe")
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\keywindowactive.exe
        FileAppend, on, C:\temp\mt\keywindow.txt
        Goto, keywindowcheckeroff