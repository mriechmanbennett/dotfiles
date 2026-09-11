# Get the latest download URL for Bitwarden Desktop x64 Installer
$release_list_url = "https://api.github.com/repos/bitwarden/clients/releases"
$releases = Invoke-RestMethod -Method Get -Uri $release_list_url
$asset = $releases | where tag_name -like "*desktop-*" | select-object -first 1 | % assets | where-object name -like "*Bitwarden-Installer-*.exe"

# Download the installer
$installer = "$env:temp\$($asset.name)"
Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $installer

# Run the installer
$install_args = '/SP- /SILENT /SUPPRESSMSGBOXES /NOCANCEL /NORESTART /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /ALLUSERS /REDIRECTIONGUARD'
Start-Process -FilePath $installer -ArgumentList $install_args -Wait

# Cleanup
Remove-Item $installer