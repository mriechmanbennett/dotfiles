$CapabilitiesToAdd =
    "Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0",
    "Rsat.GroupPolicy.Management.Tools~~~~0.0.1.0",
    "Rsat.Dns.Tools~~~~0.0.1.0",
    "Rsat.DHCP.Tools~~~~0.0.1.0",
    "Rsat.BitLocker.Recovery.Tools~~~~0.0.1.0",
    "Rsat.CertificateServices.Tools~~~~0.0.1.0"

Foreach ($Capability in $CapabilitiesToAdd) {
    Start-Process -NoNewWindow -PassThru -FilePath powershell.exe -ArgumentList "Add-WindowsCapability -Online -ErrorAction SilentlyContinue -Name $Capability"
}