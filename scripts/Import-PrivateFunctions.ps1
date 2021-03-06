$projectRoot = ((Get-Item (Split-Path -Parent -Path $MyInvocation.MyCommand.Definition)).Parent).FullName
$Private = @( Get-ChildItem -Path $projectRoot\VcRedist\Private\*.ps1 -ErrorAction SilentlyContinue )
ForEach ($import in $Private) {
    Try {
        . $import.fullname
    }
    Catch {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}
