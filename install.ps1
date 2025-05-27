pushd "$HOME"

if ((Get-Command scoop -ErrorAction SilentlyContinue) -eq $null) {
    irm get.scoop.sh -outfile 'scoop.ps1'
    .\scoop.ps1 -RunAsAdmin | out-null
    rm scoop.ps1
}

scoop bucket add nerd-fonts
scoop bucket add extras
scoop install firacode vscode sd
reg import "$HOME\scoop\apps\vscode\current\install-github-integration.reg"

code --install-extension yathink3.carbon-react-color-theme --force
code --install-extension pkief.material-icon-theme --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension be5invis.vscode-custom-css --force
code --install-extension apility.beautify-blade --force
code --install-extension isudox.vscode-jetbrains-keybindings --force
code --install-extension donjayamanne.githistory --force
code --install-extension RimuruChan.vscode-fix-checksums-next --force

$repo = "https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main"
$cfg = "$HOME/scoop/apps/vscode/current/data/user-data/User"

[void](mkdir -ea 0 "$cfg")

curl "$repo/settings.json" -o "$cfg/settings.json"
curl "$repo/keybindings.json" -o "$cfg/keybindings.json"
curl "$repo/code.css" -o "$cfg/code.css"
curl "$repo/code.js" -o "$cfg/code.js"

sd 'CODE_CSS' "$cfg/code.css".Replace('\', '/') "$cfg/settings.json"
sd 'CODE_JS' "$cfg/code.js".Replace('\', '/') "$cfg/settings.json"

popd
