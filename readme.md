# VSCode Settings

Scripts to install my vscode prefs on {windows, linux}

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/img.png" alt="window" width="500">
    <img src="https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/img1.png" alt="blur" width="500">
  </div>
</p>


# Install

- Note: You should read scripts before running them
- Note: These scripts are for my preferred setup and may have side-effects or incompatibilities that may not work on 
your system.
- Note: The 'uninstall' scripts below are not comprehensive, and will leave clutter behind that were installed by the 
'install' scripts


```
# windows, powershell
irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/install.ps1 | iex

# linux/ubuntu, bash
curl https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/install.sh | bash
```

Required manual steps, not automated by the scripts yet:

- vscode > palette > Reload Custom CSS and JS
  - restart vscode
- vscode > palette > Fix Checksums: Apply
- vscode > menu > selection > switch to alt-click for multi-cursor

- hotkeys: edit the package.json for the installed extension, for the path matching your OS
  - windows  
    - code "$HOME\scoop\persist\vscode\data\extensions\isudox.vscode-jetbrains-keybindings-0.1.9\package.json"
  - linux  
    - code "$HOME/.vscode/extensions/isudox.vscode-jetbrains-keybindings-0.1.9/package.json"  
  - edits
    - find ctrl+` > delete hotkey def
    - find ctrl+k > delete hotkey def
- restart vscode



# Uninstall


```
# windows, powershell
irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/uninstall.ps1 | iex

# linux/ubuntu, bash
curl https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/uninstall.sh | bash
```


# Credit

Big thanks to https://github.com/glennraya/vscode-settings-json, from whom I've heavily borrowed
