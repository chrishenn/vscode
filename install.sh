#!/bin/bash

pushd "$HOME"

curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -o code.deb
sudo DEBIAN_FRONTEND=noninteractive apt install -y ./code.deb
rm code.deb

code --install-extension yathink3.carbon-react-color-theme --force
code --install-extension pkief.material-icon-theme --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension be5invis.vscode-custom-css --force
code --install-extension apility.beautify-blade --force
code --install-extension isudox.vscode-jetbrains-keybindings --force
code --install-extension donjayamanne.githistory --force
code --install-extension RimuruChan.vscode-fix-checksums-next --force

sudo apt install -y fonts-firacode sd

repo="https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main"
cfg="$HOME/.config/Code/User"

mkdir -p "$cfg"

curl -L "$repo/settings.json" -o "$cfg/settings.json"
curl -L "$repo/keybindings.json" -o "$cfg/keybindings.json"
curl -L "$repo/code.css" -o "$cfg/code.css"
curl -L "$repo/code.js" -o "$cfg/code.js"

sd 'CODE_CSS' "$cfg/code.css" "$cfg/settings.json"
sd 'CODE_JS' "$cfg/code.js" "$cfg/settings.json"

sudo chown -R $(whoami) "$(which code)"
sudo chown -R $(whoami) /usr/share/code

popd
