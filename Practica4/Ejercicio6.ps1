$numero = 50

do {
    $adiv = Read-Host "Introduce un numero: "
    if ($adiv -gt $numero) {
        Write-Host "El numero introducido es mayor que el objetivo"
    } elseif ($adiv -lt $numero) {
        Write-Host "El numero introducido es menor que el objetivo"
    } else {
        Write-Host "GANASTE!"
    }
} while ( $numero -ne $adiv)