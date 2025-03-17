# VSCode Theming

Custom themes for my vscode preferences

One-liner to download and install (security note: read random scripts from the internet before running them)
```powershell
irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/install.ps1 | iex
```

Manual steps, not handled by the script:

vscode > palette > Reload Custom CSS and JS 
restart vscode

vscode > notification "your installation appears to be corrupt" > cog icon > don't show again

selection > switch to alt-click for multi-cursor

code "$HOME\scoop\persist\vscode\data\extensions\isudox.vscode-jetbrains-keybindings-0.1.9\package.json"
find ctrl+` > delete hotkey
find ctrl+k > delete hotkey
vscode > palette > reload window


Uninstaller
```powershell
irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/uninstall.ps1 | iex
```

---

# Manual Install

## Settings, Keybindings

The settings.json includes hardcoded paths into C:\vscode

```powershell
cp /vscode/settings.json "$HOME\scoop\apps\vscode\current\data\user-data\User\settings.json" -force
cp /vscode/keybindings.json "$HOME\scoop\apps\vscode\current\data\user-data\User\keybindings.json" -force
```


## Deps 

### Fonts

scoop bucket add nerd-fonts
scoop install firacode


### Code + Extensions

scoop install vscode

in the vscode prompt:
ext install yathink3.carbon-react-color-theme
ext install esbenp.prettier-vscode
ext install be5invis.vscode-custom-css
ext install apility.beautify-blade
ext install isudox.vscode-jetbrains-keybindings

alternatively, from shell:
code --install-extension yathink3.carbon-react-color-theme --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension be5invis.vscode-custom-css --force
code --install-extension apility.beautify-blade --force
code --install-extension isudox.vscode-jetbrains-keybindings --force



# Credit

Big thanks to https://github.com/glennraya/vscode-settings-json from whom I've heavily copy-pasted into this repo