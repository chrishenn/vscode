pushd /

irm get.scoop.sh -outfile 'scoop.ps1'
.\scoop.ps1 -RunAsAdmin | out-null
rm scoop.ps1

scoop install vscode
code --install-extension yathink3.carbon-react-color-theme --force
code --install-extension pkief.material-icon-theme --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension be5invis.vscode-custom-css --force
code --install-extension apility.beautify-blade --force
code --install-extension isudox.vscode-jetbrains-keybindings --force
code --install-extension donjayamanne.githistory --force

scoop bucket add nerd-fonts
scoop install firacode

if (! (test-path /vscode)) {
    git clone git@github.com:chrishenn/vscode.git
    cd /vscode
} else {
    cd /vscode
    git pull
}
cp /vscode/settings.json "$HOME\scoop\apps\vscode\current\data\user-data\User\settings.json" -force
cp /vscode/keybindings.json "$HOME\scoop\apps\vscode\current\data\user-data\User\keybindings.json" -force
popd
