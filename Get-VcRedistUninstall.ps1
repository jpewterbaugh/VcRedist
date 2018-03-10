Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall, HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall | `
Get-ItemProperty | Where-Object {$_.DisplayName -like "Microsoft Visual C*"} | Select-Object DisplayName, UninstallString | `
Sort-Object DisplayName
