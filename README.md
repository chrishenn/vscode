# VSCode Settings

Custom settings for my vscode prefs



# Install

security note: you should read scripts before running them

```
# windows, powershell
irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/install.ps1 | iex

# linux/ubuntu, bash
curl https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/install.sh | bash
```

Manual steps, not handled by the script:

- vscode > palette > Fix Checksums: Apply
- vscode > palette > Reload Custom CSS and JS
  - restart vscode
- vscode > menu > selection > switch to alt-click for multi-cursor


- code "$HOME\scoop\persist\vscode\data\extensions\isudox.vscode-jetbrains-keybindings-0.1.9\package.json"
- code "$HOME/.vscode/extensions/isudox.vscode-jetbrains-keybindings-0.1.9/package.json"  
  - find ctrl+` > delete hotkey
  - find ctrl+k > delete hotkey
- vscode > palette > reload window



# Uninstall


```
# windows, powershell
irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/uninstall.ps1 | iex

# linux/ubuntu, bash
curl https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/uninstall.sh | bash
```


# Manual Install

## Settings, Keybindings

The settings.json includes hardcoded paths into C:\vscode, so you'd best clone the repo to C:\vscode

```powershell
cp /vscode/settings.json "$HOME\scoop\apps\vscode\current\data\user-data\User\settings.json" -force
cp /vscode/keybindings.json "$HOME\scoop\apps\vscode\current\data\user-data\User\keybindings.json" -force
```


## Deps

### Fonts

```powershell
scoop bucket add nerd-fonts
scoop install firacode
```

### Code + Extensions

```powershell
scoop install vscode

# in the vscode prompt:
ext install yathink3.carbon-react-color-theme
ext install esbenp.prettier-vscode
ext install be5invis.vscode-custom-css
ext install apility.beautify-blade
ext install isudox.vscode-jetbrains-keybindings

# alternatively, from shell:
code --install-extension yathink3.carbon-react-color-theme --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension be5invis.vscode-custom-css --force
code --install-extension apility.beautify-blade --force
code --install-extension isudox.vscode-jetbrains-keybindings --force
```


# Credit

Big thanks to https://github.com/glennraya/vscode-settings-json, from whom I've heavily borrowed
