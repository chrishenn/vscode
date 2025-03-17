iex "& {$(irm get.scoop.sh)} -RunAsAdmin"

scoop install vscode
code --install-extension yathink3.carbon-react-color-theme --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension be5invis.vscode-custom-css --force
code --install-extension apility.beautify-blade --force
code --install-extension isudox.vscode-jetbrains-keybindings --force

scoop bucket add nerd-fonts
scoop install firacode

cd /
git clone git@github.com:chrishenn/vscode.git
cd vscode

$file = "$HOME\scoop\apps\vscode\current\data\user-data\User\settings.json"
cp /vscode/settings.json $file -force

$file = "$HOME\scoop\apps\vscode\current\data\user-data\User\keybindings.json"
cp /vscode/keybindings.json $file -force

