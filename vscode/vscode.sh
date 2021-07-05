#! /bin/bash

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install code


FILE=~/.local/share/applications/code.desktop
rm "$FILE"
cp /usr/share/applications/code.desktop "$FILE"
sed -i 's/^Exec=.*/& --enable-features=UseOzonePlatform --ozone-platform=wayland/' "$FILE"
