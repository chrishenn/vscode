#!/bin/bash

pushd /

sudo snap install code
code --install-extension yathink3.carbon-react-color-theme --force
code --install-extension pkief.material-icon-theme --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension be5invis.vscode-custom-css --force
code --install-extension apility.beautify-blade --force
code --install-extension isudox.vscode-jetbrains-keybindings --force
code --install-extension donjayamanne.githistory --force

sudo apt install fonts-firacode

if [[ ! -d /vscode ]]; then
    git clone git@github.com:chrishenn/vscode.git
    cd /vscode
else
    cd /vscode
    git pull
fi
cp /vscode/settings.json "$HOME/.config/Code/User/settings.json" -force
cp /vscode/keybindings.json "$HOME/.config/Code/User/keybindings.json" -force
popd
