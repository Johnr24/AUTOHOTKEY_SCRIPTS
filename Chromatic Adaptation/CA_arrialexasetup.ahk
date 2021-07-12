#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 5
MouseGetPos x, y
SendEvent, {Click, 3951,66} ; Click Settings

;Source Illuminant
SendEvent, {Click, 3900,218}
Sleep, 10
SendEvent, {Click, 3900,278}

; Target Iluminat

SendEvent, {Click, 3900,373}
Sleep, 10
SendEvent, {Click, 3900,424}

;Current Colour Space and Gamma (Colour Space)
SendEvent, {Click, 3900,525}
Sleep, 10
SendEvent, {Click, 3900,610}


;Current Colour Space and Gamma (GAMMA)
SendEvent, {Click, 3900,551}
Sleep, 10
SendEvent, {Click, 3900,675}

MouseMove %x%, %y%