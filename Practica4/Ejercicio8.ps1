[int] $numero = Read-Host "Introduce un numero entero: "
for ($i=0; $i -le $numero ; $i++) {
    for ($j=0;$j -le $i; $j++) {
        if ($i%2 -ne 0) {
            if ($j %2 -ne 0){
                Write-Host -NoNewline "$j "
            }
        }
    }
    Write-Host ""
}