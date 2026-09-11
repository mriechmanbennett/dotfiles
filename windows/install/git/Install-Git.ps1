# Get the latest download URL for Git-for-Windows 64-bit EXE file
$git_url = "https://api.github.com/repos/git-for-windows/git/releases/latest"
$asset = Invoke-RestMethod -Method Get -Uri $git_url | % assets | where name -like "*64-bit.exe"

# Download the installer
$installer = "$env:temp\$($asset.name)"
Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $installer

# Run the installer
$git_install_inf = "git_options.ini"
$install_args = '/SP- /SILENT /SUPPRESSMSGBOXES /NOCANCEL /NORESTART /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /ALLUSERS /LOADINF="$git_install_inf"'
Start-Process -FilePath $installer -ArgumentList $install_args -Wait