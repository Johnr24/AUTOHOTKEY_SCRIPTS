import pyautogui
import time
from middletoolsconfig import curves, tby, lumvssat, cya

# Get current mouse position
x, y = pyautogui.position()

# Move mouse and click at (curves, tby)
pyautogui.moveTo(curves, tby)
pyautogui.click()

# Move mouse and click at (lumvssat, cya)
pyautogui.moveTo(lumvssat, cya)
pyautogui.click()

# Move mouse back to original position
pyautogui.moveTo(x, y)