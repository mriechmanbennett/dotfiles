# Point to the VSCode x64 installer
$download_url = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64"

# Download the installer
$installer = "$env:temp\VSCodeSetup-x64.exe"
Invoke-WebRequest -Uri $download_url -OutFile $installer

# Run the installer
$config_inf = "vscode_options.ini"
$install_args = '/SP- /SILENT /SUPPRESSMSGBOXES /NOCANCEL /NORESTART /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /ALLUSERS /REDIRECTIONGUARD /LOADINF="$config_inf"'
Start-Process -FilePath $installer -ArgumentList $install_args -Wait