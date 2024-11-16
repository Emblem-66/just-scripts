#!/bin/bash

set -ouex pipefail

sudo flatpak override --reset
sudo flatpak uninstall --all --delete-data --force-remove -y
sudo flatpak remote-delete fedora
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak remote-modify --enable flathub
