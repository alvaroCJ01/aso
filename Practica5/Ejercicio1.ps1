Function sumar {
    param (
    [int] $x,
    [int] $y
    )
    $resultado = $y + $x
    Write-Host "$y + $x = $resultado"
}
Function restar {
    param (
    [int] $x,
    [int] $y
    )
    $resultado = $y - $x
    Write-Host "$y - $x = $resultado"
}
Function multiplicar {
    param (
    [int] $x,
    [int] $y
    )
    $resultado = $y * $x
    Write-Host "$y x $x = $resultado"
}
Function dividir {
    param (
    [int] $x,
    [int] $y
    )
    $resultado = $y / $x
    Write-Host "$y / $x = $resultado"
}
do {
    Write-Host "
    ***CALCULADORA***
        1. sumar
        2. Restar
        3. Multiplicar
        4. Dividir
        5. Salir"

    [int] $y = Read-Host "Introduce el primer numero"
    [int] $x = Read-Host "Introduce el segundo numero"
    [int] $opt = Read-Host "Introduce la opción que quiere realizar"
    switch ($opt) {
        1 {
        sumar $x $y
        }
        2 {
        restar $x $y
        }
        3 {
        multiplicar $x $y
        }
        4 {
        dividir $x $y
        }
    }
} while ($opt -ne 5)