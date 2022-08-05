#! /bin/bash

set -x

# -- Add flathub.

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# -- Install Bottles flatpak.

notify-send "Installing Bottles, please wait..." --icon=steam

flatpak install -y flathub com.usebottles.bottles

notify-send "Installation complete." --icon=steam

# -- Check if Steam flatpak dir exists then delete install launcher.

notify-send "Launching Steam." --icon=steam

flatpak run com.valvesoftware.Steam &

if [ -d "/var/lib/flatpak/app/com.usebottles.bottles" ];
    then
         rm "$HOME/.config/install-bottles-flatpak.sh"
         rm "$HOME/.local/share/applications/install.bottles-flatpak.desktop"
fi

exit
