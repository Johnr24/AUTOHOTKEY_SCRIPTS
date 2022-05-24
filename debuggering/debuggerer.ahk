#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag
#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk
#Include, C:\AUTOHOTKEY_SCRIPTS\HDR MODE\zoneconfig.ahk

CoordMode, Pixel
    PixelGetColor, tracker_c, %powerwindow%, %tby%

    FileAppend, %tracker_c%, C:/temp/fuck.txt


    PixelGetColor, bx, %tabclosedx%, %black%, 
    PixelGetColor, dx, %tabclosedx%, %dark%, 
    PixelGetColor, sx, %tabclosedx%, %shadow%,
    PixelGetColor, lx, %tabclosedx%, %light%,
    PixelGetColor, hx, %tabclosedx%, %highlight%,
    PixelGetColor, specx, %tabclosedx%, %specular%,
    SetEnv, bx, %bx%

    
    FileAppend, 
    (
    %bx%
    %dx%
    %sx%
    %lx%
    %hx%
    %specx%
    ) ,C:\temp\pixelcheck.txt]
