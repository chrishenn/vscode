#!/bin/bash

pushd "$HOME"

mkdir -p "$HOME/tmp"
pushd "$HOME/tmp"
curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -o code.deb
sudo DEBIAN_FRONTEND=noninteractive apt install -y ./code.deb
popd
rm -rf "$HOME/tmp"

code --install-extension yathink3.carbon-react-color-theme --force
code --install-extension pkief.material-icon-theme --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension be5invis.vscode-custom-css --force
code --install-extension apility.beautify-blade --force
code --install-extension isudox.vscode-jetbrains-keybindings --force
code --install-extension donjayamanne.githistory --force
code --install-extension RimuruChan.vscode-fix-checksums-next --force

sudo apt install -y fonts-firacode sd

sett="$HOME/.config/Code/User/settings.json"
keyb="$HOME/.config/Code/User/keybindings.json"
codecss="$HOME/.config/Code/User/code.css"
codejs="$HOME/.config/Code/User/code.js"

curl -Lo "$sett" "https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/settings.json"
curl -Lo "$keyb" "https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/keybindings.json"
curl -Lo "$codecss" "https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/code.css"
curl -Lo "$codejs" "https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/code.js"

sd 'CODE_CSS' "$codecss" "$sett"
sd 'CODE_JS' "$codejs" "$sett"

sudo chown -R $(whoami) "$(which code)"
sudo chown -R $(whoami) /usr/share/code

popd
