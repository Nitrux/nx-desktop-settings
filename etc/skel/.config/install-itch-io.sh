#! /bin/bash

set -x

# -- Download setup file.

wget -q -O ~/.config/itch-setup https://raw.githubusercontent.com/Nitrux/storage/master/Other/itch-setup

# -- Run setup.

notify-send "Installing itch.io, please wait..." --icon=itch-io

chmod +x ~/.config/itch-setup
~/.config/./itch-setup

notify-send "Installation complete." --icon=itch-io

# -- Check if itch dir exists then delete setup file.

notify-send "Launching itch.io." --icon=steam

if [ -d "$HOME/.itch" ];
    then
         rm "$HOME/.config/itch-setup"
         rm "$HOME/.config/install-itch-io.sh"
         rm "$HOME/.local/share/applications/install.itch.io.desktop"
fi

exit
