[int] $numero = Read-Host "Introduce un numero: "
for ($i = 0; $i -le $numero; $i++) {
    for ($f = 0; $f -lt $i; $f++) {
        Write-Host -NoNewLine "*"
    }
    Write-Host ""
}