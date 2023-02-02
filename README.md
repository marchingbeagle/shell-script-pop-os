# shell-script-pop-os

This script was made for my first steps on Pop!_OS installs, so every time i need to make a fresh install, i can easily reinstall a lot of packages that i use.

If you wanna do something similar for your system, just make sure the downloads folder variable is correct for you.
```
DIRETORIO_DOWNLOADS="$HOME/Downloads/"
```
To run the script just enter the folder where it is and type on the terminal:
```
sudo ./script.sh
```
# zsh configs
```
sh -c -n "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y;
chsh -s $(which zsh) #set zsh for default
```
Theme i use is [daveverwer],  to change your theme just run
```
cd ~ ; sudo nano .zshrc
```
Inside .zshrc file you can change the theme to your desired theme

# Omni theme instalation
```
git clone https://github.com/getomni/gnome-terminal.git;
```
Then you have to manually enter the folder downloaded and run the folowing command
```
sudo ./install.sh;
```
