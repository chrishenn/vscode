# VSCode Theming



## Settings

The settings.json includes hardcoded paths into C:\vscode.

```shell
cd /vscode
git clone git@github.com:chrishenn/vscode.git
```

```powershell
$file = "$HOME\scoop\apps\vscode\current\data\user-data\User\settings.json"
cp /vscode/settings.json $file -force
```



## Keybindings

- selection > switch to alt-click for multi-cursor

Find this ctrl+backtick setting in the extension package.json file and disable


```powershell
$file = "$HOME\scoop\persist\vscode\data\extensions\isudox.vscode-jetbrains-keybindings-0.1.9\package.json"
# edit manually

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
