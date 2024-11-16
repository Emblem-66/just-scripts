#!/bin/bash

set -ouex pipefail

dconf reset -f /

flatpak install -y org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark
gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'minimize'
gsettings set org.gnome.shell enabled-extensions ['caffeine@patapon.info', 'legacyschemeautoswitcher@joshimukul29.gmail.com', 'tailscale@joaophi.github.com']
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.preferences default-sort-order 'type'
gsettings set org.gnome.nautilus.preferences default-sort-order 'name'
gsettings set org.gnome.nautilus.list-view use-tree-view true
gsettings set org.gnome.nautilus.list-view default-visible-columns ['name', 'size', 'type', 'date_modified']
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'
