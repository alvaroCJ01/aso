#!/bin/bash

if [ "$#" -lt 4 ] || [ "$#" -gt 5 ]; then
        echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
        exit 1
fi
x=$1
n=$2
a1=$3
a2=$4
g=$5
id="alu${a1:0:2}${a2:0:2}${n:0:1}"
if [ "$x" == "alta" ]; then
    if [ -z "$g" ]; then
        sudo groupadd $g
    fi
    sudo useradd -m -g $g -s /bin/bash $id
    echo "Usuario $id creado con éxito."
elif [ "$x" == "baja" ]; then
    sudo userdel -r $id
    echo "Usuario $id eliminado con éxito."
else
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi
