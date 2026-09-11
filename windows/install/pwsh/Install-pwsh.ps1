# Get the latest download URL for pwsh x64 MSI installer
$download_url = "https://api.github.com/repos/PowerShell/PowerShell/releases/latest"
$asset = Invoke-RestMethod -Method Get -Uri $download_url | % assets | where name -like "*-win-x64.msi"

# Download the installer
$installer = "$env:temp\$($asset.name)"
Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $installer

# Run the installer
$msiParams = @(
    '/package'
    $installer
    '/quiet'
    'ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1'
    'ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1'
    'ENABLE_PSREMOTING=0'
    'REGISTER_MANIFEST=1'
    'DISABLE_TELEMETRY=1'
    'USE_MU=1'
    'ENABLE_MU=1'
    'ADD_PATH=1'
)

msiexec @msiParams