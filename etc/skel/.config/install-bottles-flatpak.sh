#! /bin/bash

set -x

# -- Add flathub.

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# -- Install Bottles flatpak.

notify-send "Installing Bottles, please wait..." --icon=com.usebottles.bottles

flatpak install -y --user com.usebottles.bottles

notify-send "Installation complete." --icon=com.usebottles.bottles

# -- Check if Bottles flatpak dir exists then delete install launcher.

notify-send "Launching Bottles." --icon=com.usebottles.bottles

flatpak run com.usebottles.bottles &

if [ -d "$HOME/.var/app/com.usebottles.bottles" ];
    then
         rm "$HOME/.config/install-bottles-flatpak.sh"
         rm "$HOME/.local/share/applications/install.bottles.desktop"
fi

exit
