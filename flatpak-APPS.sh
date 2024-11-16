#!/bin/bash

set -ouex pipefail

install_packages=(
"org.mozilla.firefox"
"com.bitwarden.desktop"
"com.discordapp.Discord"
"com.spotify.Client"
"org.jdownloader.JDownloader"
"org.onlyoffice.desktopeditors"
)

flatpak install -y ${install_packages[@]}

