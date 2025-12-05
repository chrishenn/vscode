pushd "$HOME"

$asadmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(
    [Security.Principal.WindowsBuiltInRole]::Administrator
)

if ($null -eq (Get-Command scoop -ErrorAction SilentlyContinue)) {
    irm get.scoop.sh -outfile 'scoop.ps1'
    if ($asadmin) {
        .\scoop.ps1 -RunAsAdmin | out-null
    } else {
        .\scoop.ps1 | out-null
    }
    rm scoop.ps1
}

scoop bucket add nerd-fonts
scoop bucket add extras
scoop install firacode-nf-mono vscode sd
reg import "$(scoop prefix vscode)\install-github-integration.reg"

code --install-extension yathink3.carbon-react-color-theme --force
code --install-extension pkief.material-icon-theme --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension be5invis.vscode-custom-css --force
code --install-extension apility.beautify-blade --force
code --install-extension isudox.vscode-jetbrains-keybindings --force
code --install-extension donjayamanne.githistory --force
code --install-extension RimuruChan.vscode-fix-checksums-next --force

$repo = "https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main"
$cfg = "$(scoop prefix vscode)/data/user-data/User"

[void](mkdir -force "$cfg")

curl "$repo/src/settings.json" -o "$cfg/settings.json"
curl "$repo/src/keybindings.json" -o "$cfg/keybindings.json"
curl "$repo/src/code.css" -o "$cfg/code.css"
sd 'CODE_CSS' "$cfg/code.css".Replace('\', '/') "$cfg/settings.json"

$cfg = (resolve-path "$HOME\scoop\persist\vscode\data\extensions\isudox.vscode-jetbrains-keybindings-*\package.json").path
yq -iP 'del(.contributes.keybindings[] | select(.key == "ctrl+`"))' $cfg -o json
yq -iP 'del(.contributes.keybindings[] | select(.key == "ctrl+k"))' $cfg -o json

popd
