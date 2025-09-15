#!/bin/bash
##Comprobacion del numero de parametros
if ($# -eq 1) then
    fecha=$date +%Y-%m-%d
    echo $fecha
else 
    echo "Introduzca un único parametro (directorio)"
fi