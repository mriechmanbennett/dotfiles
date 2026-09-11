# Get the latest download URL for PyManager MSI
$release_list_url = "https://api.github.com/repos/python/pymanager/releases/latest"
$current_release = Invoke-RestMethod -Method Get -Uri $release_list_url
$download_url = "https://www.python.org/ftp/python/pymanager/python-manager-$($current_release.tag_name).msi"

# Download the installer
$installer = "$env:temp\python-manager-$($current_release.tag_name).msi"
Invoke-WebRequest -Uri $download_url -OutFile $installer

# Run the installer
# Run the installer
$msiParams = @(
    '/package'
    $installer
    '/passive'
    'ALLUSERS=1'
)

msiexec @msiParams