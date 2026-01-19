$nombre = Read-Host "Dime tu nombre"
[int] $numero = Read-Host "Dame un numero"

for ($i=0; $i -lt $numero;$i++) {
    Write-Host $nombre
}