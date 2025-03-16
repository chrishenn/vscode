# VSCode Settings

Scripts to install my vscode prefs on {windows, linux}

<p style="text-align: center;">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/doc/img.png" alt="window" width="400">
    <img src="https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/doc/img1.png" alt="blur" width="400">
  </div>
</p>

# Install

- Note: You should read scripts before running them
- Note: These scripts are for my preferred setup and may have side-effects or incompatibilities that may not work on
  your system.
- Note: The 'uninstall' scripts below are not comprehensive, and will leave clutter behind that were installed by the
  'install' scripts

```
# note: this is now a scoop bucket at chrishenn/scoops, which is recommended over this scripted install for windows
# windows, powershell
irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/script/install.ps1 | iex

# ubuntu/debian (requires apt), bash
curl https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/script/install.sh | bash
```

Required manual steps:

- vscode > palette > Reload Custom CSS and JS
    - restart
- vscode > palette > Fix Checksums: Apply
- vscode > menu > selection > switch to alt-click for multi-cursor
    - restart vscode


note: this is now handled by {linux: a my script in my dotfiles chrishenn/dotfiles} {windows: scoop} 
- hotkeys fix  
    - windows
        - code "$HOME\scoop\persist\vscode\data\extensions\isudox.vscode-jetbrains-keybindings-0.1.9\package.json"
    - linux
        - code "$HOME/.vscode/extensions/isudox.vscode-jetbrains-keybindings-0.1.9/package.json"
    - edits
        - find ctrl+` > delete hotkey definition
        - find ctrl+k > delete hotkey definition
    - restart vscode

# Uninstall

```
# windows, powershell
irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/script/uninstall.ps1 | iex

# ubuntu/debian (requires apt), bash
curl https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/script/uninstall.sh | bash
```

# Credit

Big thanks to https://github.com/glennraya/vscode-settings-json, from whom I've heavily borrowed
