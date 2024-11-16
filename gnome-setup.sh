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

# Automatic Timezone
gsettings set org.gnome.desktop.datetime automatic-timezone true

# Clock Format and Theme
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'
gsettings set org.gnome.desktop.interface toolkit-accessibility false

# Nautilus Icon View Captions
gsettings set org.gnome.nautilus.icon-view captions "['type', 'size', 'none']"

# Nautilus List View Preferences
gsettings set org.gnome.nautilus.list-view default-column-order "['name', 'size', 'type', 'owner', 'group', 'permissions', 'date_modified', 'date_accessed', 'date_created', 'recency', 'detailed_type']"
gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'type', 'date_modified']"
gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'
gsettings set org.gnome.nautilus.list-view use-tree-view true

# Nautilus Preferences
gsettings set org.gnome.nautilus.preferences date-time-format 'detailed'
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.preferences default-sort-order 'name'
gsettings set org.gnome.nautilus.preferences migrated-gtk-settings true
gsettings set org.gnome.nautilus.preferences search-filter-time-type 'last_modified'

# Power Management
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# Caffeine Extension
gsettings set org.gnome.shell.extensions.caffeine indicator-position-max 2
gsettings set org.gnome.shell.extensions.caffeine inhibit-apps "[]"
gsettings set org.gnome.shell.extensions.caffeine show-notifications false
gsettings set org.gnome.shell.extensions.caffeine show-timer false
gsettings set org.gnome.shell.extensions.caffeine toggle-state false

# GTK4 File Chooser
gsettings set org.gtk.gtk4.settings.file-chooser show-hidden false
gsettings set org.gtk.gtk4.settings.file-chooser sort-directories-first true

# GTK3 File Chooser
gsettings set org.gtk.settings.file-chooser clock-format '24h'
