#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

x_offset := 0
y_offset := 0

ones := 0.01
twos := 0.02
fives := 0.05
tens := 0.1
twentyfives := 0.25
halfs :=0.5
fulls := 1
doubles := 2

fast_ones := 10
fast_twos := 20
fast_fives := 50
fast_tens := 100
fast_twentyfives := 250
fast_halfs := 500
fast_fulls := 1000
fast_doubles := 2000

fast_ones_tint := 0.2
fast_twos_tint := 0.05
fast_fives_tint := 1
fast_tens_tint := 2
fast_twentyfives_tint := 5
fast_halfs_tint := 10
fast_fulls_tint := 20
fast_doubles_tint := 40