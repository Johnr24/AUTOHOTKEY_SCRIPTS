# AUTOHOTKEY_SCRIPTS
## About
These scripts are things that I have made using autohotkey in order to expand the ability of my tangent elements panel and make certain repetitive operations in grading faster This is my setup (excuse the cable mess) the two panels in the middle of the TK panel are Elgato StreamDecks 
![](https://github.com/Johnr24/AUTOHOTKEY_SCRIPTS/blob/master/src/readme_02.jpg?raw=true)

These StreamDecks change automatically using AutoHotKey scripts that scan Davinci Resolves GUI for changes, which then inturn launch little autohotkey applications that appear onscreen for enough time for the Elgato StreamDeck Software to notice and change to the relevant profile.


## User Guide
All the scripts in this folder are designed for a 4096 x 2160 screen resolution
you should be able to change most of the values for the scripts by editing the file found at 
```
C:\AUTOHOTKEYSCRIPTS\Main Navigation\middletoolsconfig.ahk
```
## Install Guide
### Autohotkey Install side
1. Place the repository in the root of the C Drive.
2. Press WinKey+_R and type `shell:startup`
3. Compile `C:\AUTOHOTKEY_SCRIPTS\dynamic\Middle Tool Pallet Scanner.ahk` and `C:\AUTOHOTKEY_SCRIPTS\dynamic\left_tool_pallete_scanner.ahk`
4. Place these two files in the folder opened by **Step 2**

### StreamDeck Profiles
1. Install the StreamDeck profiles in the normal way each profile will tie into a resolve pallet function 
2. using the streamdeck application profile function map the various `"active".exe` files from `C:\AUTOHOTKEY_SCRIPTS\exe\` **Please note that using a Default profile will not work with this method.**
3. Create the directory `C:\temp` inside that create 3 more folders called `mt`, `cw` and `scan`
   
![](https://github.com/Johnr24/AUTOHOTKEY_SCRIPTS/blob/master/src/streamdeck_profileimg_01.png?raw=true)

3. open resolve and the streamdecks should actively change depending on what tool you have open
   


## Pull Requests and Issues
I am taking pull-requests and issues please use the relevant functions on github to submit them. 

## Attributions
Some of these scripts/profiles and icons where written/created by Joe D'anna and have been shared with his permission http://twitter.com/joeydanna

## Disclaimer
---
Please note the LGPL-3.0 License does not apply to the icons or any image distributed from this github although these where created by individuals they are based on derivative works of icons found in other software. Copyright for those belong to their respective owners

