# Change config directory for Neovim
$env:XDG_CONFIG_HOME = "$HOME/.config"

# If Vim is not installed, alias vim for nvim
if ( !(Test-Path -Path 'C:\Program Files\Vim') ) { New-Alias -Name vim -Value nvim }
