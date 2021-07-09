SetRegView 64
path2 := "C:\temp\Regkey.txt"
RegRead, regkey, HKEY_CURRENT_USER\SOFTWARE\Elgato Systems GmbH\StreamDeck, Devices
FileDelete, %path2%
FileAppend, %regkey%, %path2%
Exit, 