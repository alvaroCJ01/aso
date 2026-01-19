$numero = Read-Host "Introduzca un numero"

for ($i=1;$i -le $numero; $i++) {
    if ($i % 2 -ne 0) {
        if ($i -eq $numero) {
            Write-Host -NoNewline $i
        } else {
            Write-Host -NoNewline $i","
        }
    }
}