#! /bin/bash

set -x

# -- Add flathub.

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# -- Install HGL flatpak.

notify-send "Installing Heroic Games Launcher in the background, please wait..." --icon=heroic

flatpak install -y --user com.heroicgameslauncher.hgl
flatpak install -y --user runtime/org.freedesktop.Platform.VulkanLayer.MangoHud/x86_64/23.08
flatpak install -y --user runtime/org.freedesktop.Platform.VulkanLayer.gamescope/x86_64/23.08
flatpak install -y --user runtime/org.freedesktop.Platform.VulkanLayer.vkBasalt/x86_64/23.08

notify-send "Installation complete." --icon=heroic

# -- Check if HGL flatpak dir exists then delete install launcher.

notify-send "Launching Heroic Games Launcher." --icon=heroic

flatpak run com.heroicgameslauncher.hgl &

if [ -d "$HOME/.var/app/com.heroicgameslauncher.hgl" ];
    then
         rm "$HOME/.config/install-hgl-flatpak.sh"
         rm "$HOME/.local/share/applications/install.hgl.desktop"
fi

exit
