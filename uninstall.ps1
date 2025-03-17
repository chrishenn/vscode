code --uninstall-extension yathink3.carbon-react-color-theme --force
code --uninstall-extension pkief.material-icon-theme --force
code --uninstall-extension esbenp.prettier-vscode --force
code --uninstall-extension be5invis.vscode-custom-css --force
code --uninstall-extension apility.beautify-blade --force
code --uninstall-extension isudox.vscode-jetbrains-keybindings --force
code --uninstall-extension donjayamanne.githistory --force
scoop uninstall vscode -p

scoop uninstall firacode -p
scoop bucket rm nerd-fonts

rm -r -force /vscode/
