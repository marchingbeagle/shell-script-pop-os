#!/bin/bash

# variables
DIRETORIO_DOWNLOADS="$HOME/Downloads/"
URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

# nala install and update for the system
sudo apt install nala -y;
sudo nala update -y;
sudo nala upgrade -y;

# restricted extras added
sudo nala install libu2f-udev -y;
sudo nala install ubuntu-restricted-extras -y;

# flatpak installs
sudo nala install flatpak -y;
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.discordapp.Discord -y --user;
flatpak install flathub com.spotify.Client -y --system;
flatpak install flathub com.bitwarden.desktop -y --user;
flatpak install flathub cc.arduino.IDE2 -y --user;
flatpak install flathub com.valvesoftware.Steam -y --user;
flatpak install flathub net.lutris.Lutris -y --user;
flatpak install flathub org.videolan.VLC -y --user;
flatpak update -y;

# standard nala installs
sudo nala install code -y;
sudo nala install gnome-tweaks -y;
sudo nala install ufw -y;
sudo nala install gufw -y;
sudo nala install gparted -y;
sudo nala install gimp -y;
sudo nala install synaptic -y;
sudo nala install curl -y;
sudo nala install zsh -y;

#--------------shell configuration-----------#
# zsh configuration
# sh -c -n "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y;
# chsh -s $(which zsh) #set zsh for default
# theme used [daveverwer], just do
# cd ~ ; sudo nano .zshrc

# omni theme instalation
# git clone https://github.com/getomni/gnome-terminal.git;
# sudo nala install dconf-cli -y;
# cd gnome-terminal;
# sudo ./install.sh;
# cd;
#-------------------------------------------#

# ufw configuration
sudo ufw limit 22/tcp;
sudo ufw allow 80/tcp;
sudo ufw allow 443/tcp;
sudo ufw default deny incoming;
sudo ufw default allow outgoing;
sudo ufw enable;

#git config
git config credential.helper store;
git config --global user.name "marchingbeagle"
git config --global user.email "erik.schneider.pacheco@gmail.com"

# Download and install chrome deb
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb
