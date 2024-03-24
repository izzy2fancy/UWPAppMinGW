param(
    [string]$SdkVersion
)

# Define the URL for the Windows SDK installer
$SdkUrl = "https://go.microsoft.com/fwlink/?linkid=2083338"

# Define the path where the SDK installer will be saved
$InstallerPath = "$env:TEMP\windows-sdk-setup.exe"

# Download the Windows SDK installer
Invoke-WebRequest -Uri $SdkUrl -OutFile $InstallerPath

# Execute the installer
Start-Process -FilePath $InstallerPath -Wait

# Clean up: delete the installer file
Remove-Item -Path $InstallerPath
