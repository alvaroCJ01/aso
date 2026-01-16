[int] $num1=Read-Host "Introduce el primer numero"
[int] $num2=Read-Host "Introduce el segundo numero"
Write-Output "*************CALCULADORA*************"
Write-Output "1. Sumar"
Write-Output "2. Restar"
Write-Output "3. Multiplicar"
Write-Output "4. Dividir"
[int] $elec=Read-Host "Introduce la operacion que desea realizar"
Switch($elec) {
    1 {
        $res = $num1 + $num2
        Write-Output "El resultado de la suma es: $res"
    }
    2 {
        $res = $num1 - $num2
        Write-Output "El resultado de la resta es: $res"
    }
    3 {
        $res = $num1 * $num2
        Write-Output "El resultado de la multiplicación es: $res"
    }
    4 {
        $res = $num1 / $num2
        Write-Output "El resultado de la division es: $res"
    }
}