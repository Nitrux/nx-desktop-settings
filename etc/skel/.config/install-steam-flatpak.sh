#! /bin/bash

set -x

# -- Add flathub.

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# -- Install Steam flatpak.

notify-send "Installing Steam, please wait..." --icon=steam

flatpak install -y --user com.valvesoftware.Steam

notify-send "Installation complete." --icon=steam

# -- Check if Steam flatpak dir exists then delete install launcher.

notify-send "Launching Steam." --icon=steam

flatpak run com.valvesoftware.Steam &

if [ -d "$HOME/.var/app/com.valvesoftware.Steam" ];
    then
         rm "$HOME/.config/install-steam-flatpak.sh"
         rm "$HOME/.local/share/applications/install.steam-flatpak.desktop"
fi

exit
