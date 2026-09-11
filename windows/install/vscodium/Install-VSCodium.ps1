# Get the latest download URL for VSCodium 64-bit EXE file
$download_url = "https://api.github.com/repos/VSCodium/vscodium/releases/latest"
$asset = Invoke-RestMethod -Method Get -Uri $download_url | % assets | where name -like "*VSCodiumSetup-x64-*.exe"

# Download the installer
$installer = "$env:temp\$($asset.name)"
Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $installer

# Run the installer
$config_inf = "vscodium_options.ini"
$install_args = '/SP- /SILENT /SUPPRESSMSGBOXES /NOCANCEL /NORESTART /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /ALLUSERS /REDIRECTIONGUARD /mergetasks=!runcode /LOADINF="$config_inf"'
Start-Process -FilePath $installer -ArgumentList $install_args -Wait