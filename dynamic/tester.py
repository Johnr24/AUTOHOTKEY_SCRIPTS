import pyautogui
import time
import os
import toolcolour
import sys
# Add the directory containing middletoolsconfig.py to the Python path
sys.path.append(r"C:\AUTOHOTKEY_SCRIPTS\Main Navigation")

# Now you can import the module
import middletoolsconfig as mtc
x = mtc.keytool
y = mtc.tby_keytool
pyautogui.moveTo(x, y)
pixel_colour = pyautogui.screenshot().getpixel((x, y))
print(f"The color of the pixel at ({x}, {y}) is {pixel_colour}")
