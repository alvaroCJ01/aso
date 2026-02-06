Import-Csv -Path "C:\Users\Administrador\archivos\empleados.csv" -Delimiter ";" | ForEach-Object {
    $usuario = "$($_.nombre).$($_.apellido)"
    if ($_.departamento -eq "PERSONAL") {
           Set-ADUser -identity $usuario -ProfilePath \\WIN-7B6PU35SQJI\Empresa_users$\$usuario\
    }
}