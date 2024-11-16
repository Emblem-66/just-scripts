#!/bin/bash

set -ouex pipefail

install_packages=(
"org.gnome.FileRoller"
"org.gnome.Papers"
"org.gnome.gThumb"
"org.gnome.TextEditor"
"org.gnome.SimpleScan"
"org.gnome.Calculator"
"com.github.rafostar.Clapper"
"ca.edestcroix.Recordbox"
)

flatpak install -y ${install_packages[@]}
