#!/bin/bash
set -euxo pipefail
IFS=$'\n\t'

function install_code {
	curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -o code.deb
	sudo DEBIAN_FRONTEND=noninteractive apt install -y ./code.deb
	rm code.deb
}

function install_code_extensions {
    # https://github.com/microsoft/vscode/issues/256031 they broke this. how?
	code --install-extension yathink3.carbon-react-color-theme --force
	code --install-extension pkief.material-icon-theme --force
	code --install-extension esbenp.prettier-vscode --force
	code --install-extension be5invis.vscode-custom-css --force
	code --install-extension apility.beautify-blade --force
	code --install-extension isudox.vscode-jetbrains-keybindings --force
	code --install-extension donjayamanne.githistory --force
	code --install-extension RimuruChan.vscode-fix-checksums-next --force
}

function main {
	pushd "$HOME"

	if ! type -P code; then
		install_code
	fi
	install_code_extensions

	if ! type -P sd; then
		sudo DEBIAN_FRONTEND=noninteractive apt install -y sd
	fi
	if ! dpkg-query -W fonts-firacode; then
	  sudo DEBIAN_FRONTEND=noninteractive apt install -y fonts-firacode
    fi
    if ! type -P yq; then
		sudo DEBIAN_FRONTEND=noninteractive apt install -y yq
    fi

#	repo="https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main"
#	cfg="$HOME/.config/Code/User"
#	mkdir -p "$cfg"
#	curl -L "$repo/src/settings.json" -o "$cfg/settings.json"
#	curl -L "$repo/src/keybindings.json" -o "$cfg/keybindings.json"
#	curl -L "$repo/src/code.css" -o "$cfg/code.css"
#
#	sd 'CODE_CSS' "$cfg/code.css" "$cfg/settings.json"

	popd

	sudo chown -R "$(whoami)" /usr/share/code/resources/app/out/vs/code/electron-browser/workbench
	yq -iP 'del(.contributes.keybindings[] | select(.key == "ctrl+`"))' $cfg -o json
    yq -iP 'del(.contributes.keybindings[] | select(.key == "ctrl+k"))' $cfg -o json
}

main "$@"
