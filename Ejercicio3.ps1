New-Item -Path "C:\" -Name "Empresa_users" -Itemtype Directory
$empresa_perm = Get-Acl -Path "C:\Empresa_users"
$empresa_perm.SetAccessRuleProtection($true,$false)
$permisos_ejecutivo = @('Administradores', 'Fullcontrol', 'ContainerInherit,ObjectInherit','None','Allow')
$regla_empresa_admin = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos_ejecutivo
$empresa_perm.AddAccessRule($regla_empresa_admin)
Set-Acl -Path "C:\Empresa_users" -AclObject $empresa_perm

Import-Csv -Path "C:\Users\Administrador\archivos\empleados.csv" -Delimiter ";" | ForEach-Object {
    New-Item -Path "C:\Empresa_users" -Name "$($_.nombre).$($_.apellido)" -Itemtype Directory
    $usuarios_perm_us = Get-Acl -Path "C:\Empresa_users\$($_.nombre).$($_.apellido)"
    $usuarios_perm_us.SetAccessRuleProtection($true,$true)
    $usuarios_perm_us2 = @("$($_.nombre).$($_.apellido)", 'Fullcontrol', 'ContainerInherit,ObjectInherit','None','Allow')
    $usuarios_perm_us2 = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $usuarios_perm_us2
    $usuarios_perm_us.AddAccessRule($usuarios_perm_us2)
    Set-Acl -Path "C:\Empresa_users\$($_.nombre).$($_.apellido)" -AclObject $usuarios_perm_us
}
New-SmbShare -Path "C:\Empresa_users" -Name "Empresa_users$" -FullAccess "administradores" -ChangeAccess "usuarios del dominio"
Import-Csv -Path "C:\Users\Administrador\archivos\empleados.csv" -Delimiter ";" | ForEach-Object {
    Set-ADUser -Identity "$($_.nombre).$($_.apellido)" -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\empresa.local\Empresa_users$\$($_.nombre).$($_.apellido)"
}
