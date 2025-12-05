# VSCode Settings

Scripts to install my vscode prefs on {windows, linux}

<p style="text-align: center;">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/doc/img.png" alt="window" width="400">
    <img src="https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/doc/img1.png" alt="blur" width="400">
  </div>
</p>

# Install

- Note: I have replaced these scripts with native tools for linux, windows (chezmoi, scoop) and I recommend them instead
    - https://github.com/chrishenn/dotfiles
    - https://github.com/chrishenn/scoops

- Note: Read scripts before running 
- Note: These scripts may not work on your system
- Note: The 'uninstall' scripts are not comprehensive

```
# windows, powershell
irm https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/script/install.ps1 | iex

# ubuntu/debian (requires apt), bash
curl https://raw.githubusercontent.com/chrishenn/vscode/refs/heads/main/script/install.sh | bash
```

Manual steps:

- vscode > palette > Reload Custom CSS and JS
    - restart vscode
- vscode > palette > Fix Checksums: Apply
- vscode > menu > selection > switch to alt-click for multi-cursor
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
