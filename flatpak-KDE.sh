#!/bin/bash

set -ouex pipefail

install_packages=(
"org.kde.ark"
"org.kde.gwenview"
"org.kde.haruna"
"org.kde.kcalc"
"org.kde.kfind"
"org.kde.ktorrent"
"org.kde.kwrite"
"org.kde.okular"
)

flatpak install -y ${install_packages[@]}
