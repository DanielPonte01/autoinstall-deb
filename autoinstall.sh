#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando os repositórios ##

sudo apt install apt-transport-https curl -y; sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg -y; echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list -y; curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list; sudo apt update && sudo apt-get update && sudo apt upgrade -y

## instalando apt  s##
sudo apt install -y ubuntu-restricted-extras libdvd-pkg ubuntu-restricted-addons dpkg-reconfigure libdvd-pkg meson gnome-sushi ffmpeg winff dconf-cli git openjdk-14-jre brave-browser okular
sudo apt-get install -y spotify-client
## Download de programas externos ##
mkdir /home/$USER/Downloads/programas && cd /home/$USER/Downloads/programas
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
wget -c https://cnj-pje-programs.s3-sa-east-1.amazonaws.com/pje-office/pje-office_amd64.deb;
sudo dpkg -i *.deb
cd
## Instalando flatpaks ##

flatpak install flathub org.telegram.desktop -y;
flatpak install flathub org.videolan.VLC -y;
flatpak install flathub com.github.alainm23.planner -y;
flatpak install flathub org.gnome.clocks -y;
flatpak install flathub com.github.johnfactotum.Foliate -y;
flatpak install flathub com.github.jeromerobert.pdfarranger -y;

echo ----------------------------------------------------------------------------------
echo ---------------------------- C O N C L U Í D O -----------------------------------
echo ----------------------------------------------------------------------------------
