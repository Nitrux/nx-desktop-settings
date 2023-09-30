#! /bin/bash

set -x

# -- Add flathub.

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# -- Install HGL flatpak.

notify-send "Installing Bottles, please wait..." --icon=heroic

flatpak install -y com.heroicgameslauncher.hgl

notify-send "Installation complete." --icon=heroic

# -- Check if HGL flatpak dir exists then delete install launcher.

notify-send "Launching Bottles." --icon=heroic

flatpak run com.heroicgameslauncher.hgl &

if [ -d "$HOME/.var/app/com.heroicgameslauncher.hgl" ];
    then
         rm "$HOME/.config/install-hgl-flatpak.sh"
         rm "$HOME/.local/share/applications/install.hgl.desktop"
fi

exit
