$numero = Read-Host "Introduzca un numero"

for ($i= $numero; $i -ge 0; $i--) {
    
    if ($i -ne 0) {
        Write-Host -nonewline $i","
    } else {
        Write-Host -nonewline $i
    }
}