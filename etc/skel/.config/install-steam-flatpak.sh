#! /bin/bash

set -eu -o pipefail 

# -- Add flathub.

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# -- Install Steam flatpak.

flatpak install -y flathub com.valvesoftware.Steam

# -- Check if Steam flatpak dir exists then delete install launcher.

[ -d ~/.var/app/com.valvesoftware.Steam ] && rm ~/.local/share/applications/install.steam.desktop

exit
