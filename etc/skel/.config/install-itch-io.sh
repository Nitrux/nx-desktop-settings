#! /bin/bash

set -eu -o pipefail 

# -- Download setup file.

wget -q -O ~/.config/itch-setup https://raw.githubusercontent.com/Nitrux/storage/master/Other/itch-setup

# -- Run setup.

notify-send "Installing itch.io, please wait..." --icon=itch-io

chmod +x ~/.config/itch-setup
~/.config/./itch-setup

# -- Check if itch dir exists then delete setup file.

[ -d ~/.itch ] && rm ~/.config/itch-setup ~/.config/install-itch-io.sh ~/.local/share/applications/install.itch.io.desktop

notify-send "Installation complete." --icon=itch-io

exit
