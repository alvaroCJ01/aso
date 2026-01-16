$direc=Read-Host "Introduzca el nombre de un directorio o fichero"
If (Test-Path $direc) {Get-ChildItem -path $direc -Recurse}
Else {Write-Output "El direcotrio o fichero no existe."}