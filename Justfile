# Justfile

flatpak-setup:
    curl -s https://raw.githubusercontent.com/Emblem-66/just-scripts/refs/heads/main/flatpak-setup.sh | bash

flatpak-apps:
    curl -s https://raw.githubusercontent.com/Emblem-66/just-scripts/refs/heads/main/flatpak-APPS.sh | bash

flatpak-kde-apps:
    curl -s https://raw.githubusercontent.com/Emblem-66/just-scripts/refs/heads/main/flatpak-GNOME.sh | bash

flatpak-gnome-apps:
    curl -s https://raw.githubusercontent.com/Emblem-66/just-scripts/refs/heads/main/flatpak-KDE.sh | bash

gnome-setup:
    curl -s https://raw.githubusercontent.com/Emblem-66/just-scripts/refs/heads/main/gnome-setup.sh | bash
