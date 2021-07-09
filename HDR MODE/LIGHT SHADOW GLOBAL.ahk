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
 SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
 SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag
#Include %A_ScriptDir%\zoneconfig.ahk

#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk
tabexistance := 00000
;HDR pane extension existance
PixelGetColor, tabexistance, %hdr_dot_x%,%lowernavbar_y%

IfEqual, tabexistance, 0x212121
{
FileDelete, C:\temp\tabclosed.txt
FileAppend, (on), C:\temp\tabopen.txt
}
Else
{
FileDelete, C:\temp\tabopen.txt
FileAppend, (on), C:\temp\tabclosed.txt
}

bx := 00000
dx := 00000
sx := 00000
lx := 00000
hx := 00000
specx := 00000



on = 0x838383
off = 0xFFFFFF
black_s := off
dark_s := off
shadow_s := on
light_s := on
highlight_s := off
specular_s :=  off

FileAppend, _%lx%_%hx%_%specx%___| ,C:\temp\pixelcheck.txt]

IfExist, C:\temp\tabopen.txt
{
    PixelGetColor, bx, %tabopenx%, %black%, 
    PixelGetColor, dx, %tabopenx%, %dark%, 
    PixelGetColor, sx, %tabopenx%, %shadow%,
    PixelGetColor, lx, %tabopenx%, %light%,
    PixelGetColor, hx, %tabopenx%, %highlight%,
    PixelGetColor, specx, %tabopenx%, %specular%,


    IfEqual bx, %black_s%
    {
        MouseMove, %tabopenx%, %black%
        SendEvent, {Click, %tabopenx%, %black%}
    }

    IfEqual, sx, %shadow_s% 
    {
        MouseMove, %tabopenx%, %shadow%
    SendEvent, {Click, %tabopenx%, %shadow%}
    }

    IfEqual, dx, %dark_s% 
    {
        MouseMove, %tabopenx%, %dark%
        SendEvent, {Click, %tabopenx%, %dark%}
    }

    IfEqual lx, %light_s%
    {
        MouseMove, %tabopenx%, %light%
        SendEvent, {Click, %tabopenx%, %light%}
    }

    IfEqual, hx, %highlight_s%
    {
        MouseMove, %tabopenx%, %hightlight%
    SendEvent, {Click, %tabopenx%, %highlight%}
    }

    IfEqual, specx, %specular_s% 
    {
        MouseMove, %tabopenx%, %specular%
        SendEvent, {Click, %tabopenx%, %specular%}
    }

}
IfExist, C:\temp\tabclosed.txt 
{
MouseMove 1444, 1700
SendEvent {Click , 1444, 1700}
sleep 50
    PixelGetColor, bx, %tabclosedx%, %black%, 
    PixelGetColor, dx, %tabclosedx%, %dark%, 
    PixelGetColor, sx, %tabclosedx%, %shadow%,
    PixelGetColor, lx, %tabclosedx%, %light%,
    PixelGetColor, hx, %tabclosedx%, %highlight%,
    PixelGetColor, specx, %tabclosedx%, %specular%,

    IfEqual bx, %black_s%
    {
        MouseMove, %tabclosedx%, %black%
        SendEvent, {Click, %tabclosedx%, %black%}
    }

    IfEqual, sx, %shadow_s%
    {
        MouseMove, %tabclosedx%, %shadow%
    SendEvent, {Click, %tabclosedx%, %shadow%}
    }

    IfEqual, dx, %dark_s% 
    {
        MouseMove, %tabclosedx%, %dark%
        SendEvent, {Click, %tabclosedx%, %dark%}
    }

    IfEqual lx, %light_s%
    {
        MouseMove, %tabclosedx%, %light%
        SendEvent, {Click, %tabclosedx%, %light%}
    }

    IfEqual, hx, %highlight_s%
    {
        MouseMove, %tabclosedx%, %hightlight%
    SendEvent, {Click, %tabclosedx%, %highlight%}
    }

    IfEqual, specx, %specular_s% 
    {
        MouseMove, %tabclosedx%, %specular%
        SendEvent, {Click, %tabclosedx%, %specular%}
    }



MouseMove 1413, 1704
SendEvent {Click , 1413, 1704}
}
    ;banked toggle 
bankedornot := 000000 ;0xE88A14
PixelGetColor,bankedornot, %global_orange_x%, %global_orange_y%

IfEqual, bankedornot, 0xE88A14
{
    FileAppend, (on),C:\temp\notbanked.txt
    FileDelete, C:\temp\banked.txt
    
}
Else
{
    FileDelete, C:\temp\notbanked.txt
    FileAppend, (on),C:\temp\banked.txt
    
}

IfExist, C:\temp\tabopen.txt 
{
    IfExist, C:\temp\notbanked.txt
    {
    MouseMove, 3056, 1709
    SendEvent, {Click, 3056, 1709}
    MouseMove, 3056, 1829
    SendEvent, {Click, 3056, 1829}
    FileDelete, C:\temp\notbanked.txt
    FileAppend, (on),C:\temp\banked.txt
    Exit
    }
}
Else
IfExist, C:\temp\tabclosed.txt 
{
    IfExist, C:\temp\notbanked.txt
    {
    MouseMove, 1517, 1709
    SendEvent, {Click, 1517, 1709}
    MouseMove, 1517, 1829
    SendEvent, {Click, 1517, 1829}
    FileDelete, C:\temp\notbanked.txt
    FileAppend, (on),C:\temp\banked.txt
    Exit
    }
    
}
Exit