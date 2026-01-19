$numero = Read-Host "Introduce un numero"
Write-Host "Tabla de multiplicar del $numero."
for ($i=1; $i -le 10; $i++ ) {
    $resultado = $i * $numero
    Write-Host "$i x $numero = $resultado"
} 