#!/usr/bin/env bash

echo "Setting up custom keybndings..."

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Diodon'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Ctrl><Alt>w'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'/usr/bin/diodon'"

echo "Done setting up custom keybndings"

echo "Tweaking UI"

gsettings set com.canonical.indicator.datetime time-format 24-hour
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-hide-mode 1
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ edge-responsiveness 10.0

echo "Done tweaking UI"

gsettings set com.canonical.indicator.session show-real-name-on-panel true
