#!/bin/bash

# nala install and update for the system
sudo apt install nala -y;
sudo nala update -y;
sudo nala upgrade -y;

# uninstalling some apps
sudo apt-get remove --purge libreoffice*;
sudo snap remove --purge firefox -y;
sudo snap remove firefox -y;
sudo apt-get clean;
sudo apt-get autoremove;

# restricted extras added
sudo nala install libu2f-udev -y;
sudo nala install ubuntu-restricted-extras -y;

# flatpak installs
sudo nala install flatpak -y;
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.spotify.Client -y --system;
flatpak install flathub com.bitwarden.desktop -y --system;
flatpak install flathub org.gimp.GIMP -y --system;
flatpak install flathub com.ktechpit.colorwall -y --system;
flatpak install flathub org.qbittorrent.qBittorrent -y --system;
flatpak install flathub com.discordapp.Discord -y --system;
flatpak install flathub org.onlyoffice.desktopeditors -y --system;
flatpak install flathub org.audacityteam.Audacity -y --system;
flatpak install flathub com.obsproject.Studio -y --system;
flatpak install flathub com.mattjakeman.ExtensionManager -y --system;
flatpak install flathub com.github.muriloventuroso.easyssh -y --system;
flatpak install flathub org.videolan.VLC -y --system;
flatpak install flathub com.system76.Popsicle -y --system;
flatpak update -y;

# standard nala installs
sudo nala install firefox -y;
sudo nala install steam -y;
sudo nala install code -y;
sudo nala install gnome-tweaks -y;
sudo nala install ufw -y;
sudo nala install gufw -y;
sudo nala install gparted -y;
sudo nala install synaptic -y;
sudo nala install curl -y;
sudo nala install zsh -y;
sudo nala install dconf-cli -y;

#discord install
wget https://dl.discordapp.net/apps/linux/0.0.22/discord-0.0.22.deb;
sudo nala install ./discord-0.0.22.deb -y;

#node js install
sudo nala install nodejs -y;
sudo nala install npm -y;
sudo npm cache clean -f;
sudo npm install -g n;
sudo n stable;
hash -r
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
cd
echo "export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" " >> /.zshrc

# ufw configuration
sudo ufw limit 22/tcp;
sudo ufw allow 80/tcp;
sudo ufw allow 443/tcp;
sudo ufw default deny incoming;
sudo ufw default allow outgoing;
sudo ufw enable;

#git config
#use your own information here
git config credential.helper store;
git config --global user.name "marchingbeagle"
git config --global user.email "erik.schneider.pacheco@gmail.com"

