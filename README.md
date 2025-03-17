# VSCode Theming

Custom themes for my vscode preferences


## Todo 

Remove these manual steps

$file = "$HOME\scoop\persist\vscode\data\extensions\isudox.vscode-jetbrains-keybindings-0.1.9\package.json"
# edit manually to find the ctrl+backtick setting in the extension file and disable

selection > switch to alt-click for multi-cursor


## Installer Script
$url = 'https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/install.ps1'

Invoke-Expression ((New-Object System.Net.WebClient).DownloadString($url))

iex "& {$(irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/install.ps1)}"


## Settings

The settings.json includes hardcoded paths into C:\vscode.

```powershell
$file = "$HOME\scoop\apps\vscode\current\data\user-data\User\settings.json"
cp /vscode/settings.json $file -force
```


## Keybindings

```powershell
$file = "$HOME\scoop\apps\vscode\current\data\user-data\User\keybindings.json"
cp /vscode/keybindings.json $file -force
```


## To Install

Font

- Fira Code


Extensions

ext install yathink3.carbon-react-color-theme
ext install esbenp.prettier-vscode
ext install be5invis.vscode-custom-css
ext install apility.beautify-blade
ext install isudox.vscode-jetbrains-keybindings


## Credit

Big thanks to https://github.com/glennraya/vscode-settings-json from whom I've heavily copy-pasted into this repo