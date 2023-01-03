#!/bin/bash

DIRETORIO_DOWNLOADS="$HOME/Downloads/"
URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

sudo apt install nala -y
sudo nala update -y
sudo nala upgrade -y

sudo nala install flatpak -y;
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.discordapp.Discord -y;
flatpak install flathub com.spotify.Client -y;
flatpak install flathub com.bitwarden.desktop -y;
flatpak install flathub cc.arduino.IDE2 -y;
flatpak install flathub com.valvesoftware.Steam -y;
flatpak install flathub com.visualstudio.code -y;
flatpak install flathub net.lutris.Lutris -y;
flatpak update -y;

sudo nala install snapd -y;
sudo snap install notion-snap -y;

sudo nala install gnome-tweaks -y;

sudo nala install ufw -y;
sudo nala install gufw -y;

# Download and install chrome deb
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb

