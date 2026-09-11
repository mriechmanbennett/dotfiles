# todo

## Windows installers to add

- Orca/MSI tools
- Neovim/vim
- Firefox
- Chrome
- Chromium

## Windows config to add

- Set symlinks URA
- sudo configuration
- Taskbar
- Desktop
- Disable telemetry
- Disable OneDrive (HKCU only)
- Disable Recall
    - Include scheduled task to trigger after update
    ```powershell
    Dism /Online /Disable-Feature /Featurename:Recall
    ```