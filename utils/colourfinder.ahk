

CoordMode,Pixel,Relative

#include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

^2:: ; Ctrl+2 hotkey
    ;get the colour
    PixelGetColor, colourtograb, %curves%, %tby_curves%
    ;copy the colour to the clipboard
    Clipboard := colourtograb
    ;spit the colour into a file append for analysis
    FileAppend, [%colourtograb%], C:\temp\mt\curves.txt
    ;mouse move to the colour picker
    MouseMove, %curves%, %tby_curves%
    return