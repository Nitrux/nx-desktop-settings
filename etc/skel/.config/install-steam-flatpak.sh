#! /bin/bash

set -x

# -- Add flathub.

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# -- Install Steam flatpak.

notify-send "Installing Steam, please wait..." --icon=steam

flatpak install -y flathub com.valvesoftware.Steam

# -- Check if Steam flatpak dir exists then delete install launcher.

if [ -d "$HOME/.var/app/com.valvesoftware.Steam" ];
    then
         rm "$HOME/.config/install-steam-flatpak.sh"
         rm "$HOME/.local/share/applications/install.steam-flatpak.desktop"
fi

notify-send "Installation complete." --icon=steam

exit
