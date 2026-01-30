New-Item -Path "C:\" -Name "Empresa" -Itemtype Directory

$empresa_perm = Get-Acl -Path "C:\Empresa"
$empresa_perm.SetAccessRuleProtection($true,$false)
$permisos_ejecutivo = @('Administradores', 'Fullcontrol', 'ContainerInherit,ObjectInherit','None','Allow')
$regla_empresa_admin = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos_ejecutivo
$empresa_perm.AddAccessRule($regla_empresa_admin)

$permisos_usuarios = @('Usuarios del dominio', 'Read', 'ContainerInherit,ObjectInherit','None','Allow')
$regla_empresa_usuario = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos_usuarios
$empresa_perm.AddAccessRule($regla_empresa_usuario)

Set-Acl -Path "C:\Empresa" -AclObject $empresa_perm

Import-Csv -Path "C:\Users\Administrador\archivos\departamentos.csv" -Delimiter ";" | ForEach-Object {
    write-host $_.departamento
    New-Item -Path "C:\Empresa" -name $_.departamento -ItemType Directory
    $departamento_perm = Get-Acl -Path "C:\Empresa\$($_.departamento)"
    $permisos_departamento = @("$($_.departamento)", 'Modify', 'ContainerInherit,ObjectInherit','None','Allow')
    $regla_departamento_grupo = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos_departamento
    $departamento_perm.SetAccessRule($regla_departamento_grupo)
    Set-Acl -Path "C:\Empresa\$($_.departamento)" -AclObject $departamento_perm
}
New-SmbShare -Path "C:\Empresa" -Name "Empresa" -FullAccess "administradores" -ReadAccess "usuarios del dominio"
