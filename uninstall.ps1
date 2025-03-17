code --uninstall-extension yathink3.carbon-react-color-theme --force
code --uninstall-extension esbenp.prettier-vscode --force
code --uninstall-extension be5invis.vscode-custom-css --force
code --uninstall-extension apility.beautify-blade --force
code --uninstall-extension isudox.vscode-jetbrains-keybindings --force
scoop uninstall vscode

scoop uninstall firacode
scoop bucket rm nerd-fonts

rm -r -force /vscode/settings.json "$HOME\scoop\apps\vscode\current\data\user-data\User\settings.json" -force
