#! /bin/bash

set -eu -o pipefail 

# -- Add flathub.

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# -- Install Steam flatpak.

notify-send "Installing Steam, please wait..." --icon=steam

flatpak install -y flathub com.valvesoftware.Steam

# -- Check if Steam flatpak dir exists then delete install launcher.

[ -d ~/.var/app/com.valvesoftware.Steam ] && rm ~/.config/install-steam-flatpak.sh ~/.local/share/applications/install.steam-flatpak.desktop

notify-send "Installation complete." --icon=steam

exit
