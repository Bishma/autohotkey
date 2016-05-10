# Auto Hot Key Scripts


## Using this Script

1. [Install AutoHotKey](https://autohotkey.com/)
1. Download the script you need or clone the repo someplace on your local computer. I recommend a folder in My Documents
1. Launch the script you want by double clicking
1. If you want any scripts to run automatically at boot make a shortcut of the script in your windows Startup folder

## Scripts

### Surface Pen

Makes use of the fact that the surface pen's top button sends F18, F19, and F20 keystrokes as long press, double click, and single click respectively.

**Please Note** To use this AHK script you'll want to get the "Surface" app from the windows app store and disable all the top button default actions.

#### Single Click
* Launch Onenote if not running
* Bring Onenote to foreground if running but not the active window
* Open Quicklaunch Item 5 if Onenote is running and is the active window
    * in my case this is the pen choice panel

#### Double Click
* If Onenote is not the active program then clip to onenote
* If onenote is the active tab then run Quicklaunch Item 4 and press x
    * In my case the initiates "Ink to Text" for turning my handwritten notes into searchable text

#### Long Press
* toggle tablet mode in windows 10
    * this is a bit of a hack that opens settings, switches to tablet mode, then closes settings
