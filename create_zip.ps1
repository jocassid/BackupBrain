
$source = "."
$destination = "..\BackupBrain.zip"

Remove-Item $destination


# Get all items except the folder you want to exclude
$itemsToZip = Get-ChildItem -Path $source -Recurse | Where-Object {
    $_.FullName -notlike "*\.idea\*"
}

Write-Host $itemsToZip

Compress-Archive -Path $itemsToZip.FullName -DestinationPath $destination