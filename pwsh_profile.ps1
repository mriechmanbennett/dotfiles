# Opt out of telemetry
# Set it two ways because I can't be bothered to learn which is right
$env:POWERSHELL_TELEMETRY_OPTOUT=1
$POWERSHELL_TELEMETRY_OPTOUT=1

# Change config directory for Neovim
$env:XDG_CONFIG_HOME = "$HOME/.config"

# If Vim is not installed, alias vim for nvim
if ( !(Test-Path -Path 'C:\Program Files\Vim') ) { New-Alias -Name vim -Value nvim }

#########
# Aliases
#########

# Shortcuts
New-Alias -Name c -Value clear
New-Alias -Name ap -Value ansible-playbook
New-Alias -Name tf -Value terraform
New-Alias -Name wo -Value Write-Output
New-Alias -Name loga -Value 'git loga'
