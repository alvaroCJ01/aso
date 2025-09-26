#Dado a que no tengo acceso a /var/log/syslog 
#he creado un fichero con varias lineas con la palabra error
sed -n '/error/p' prueba_ejer | sed -n '1,5p'
