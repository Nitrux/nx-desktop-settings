# Fix for Flatpak applications in Plasma Wayland either not listed in the applications menu or their icons.
emulate sh -c 'source /etc/profile'

# Make Plasma load faster at the "expense" of more RAM. The "expensive" part being an increase of maybe 10 MiB.
export PLASMA_PRELOAD_POLICY=aggressive
