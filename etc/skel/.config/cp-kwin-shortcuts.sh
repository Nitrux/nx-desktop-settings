#! /bin/bash

set -eu -o pipefail 

# -- Copy shortcuts to home dir.

cp -r /etc/xdg/kglobalshortcutsrc ~/.config/kglobalshortcutsrc

# -- Check if file dir exists then delete script file.

[ -f ~/.config/kglobalshortcutsrc ] && rm ~/.config/cp-kwin-shortcuts.sh ~/.local/share/applications/copy.kwin.shortcuts.desktop

exit
