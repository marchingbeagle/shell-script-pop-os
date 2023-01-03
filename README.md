# shell-script-pop-os

This script was made for my first steps on pos install for pop os, so every time i need to make a fresh install, i can easily reinstall a lot of packages that i use.

If you wanna do something similar for your system, just make sure the downloads folder variable is correct for you.
```
DIRETORIO_DOWNLOADS="$HOME/Downloads/"
```
For running it you also need to give the script the permissions to run:
```
chmod u+x script.sh
```
To run the script just enter the folder where it is and type on the terminal:
```
sudo ./script.sh
```
I use nala instead of standard apt because is significantly faster and also cleaner to visualize in the terminal.

