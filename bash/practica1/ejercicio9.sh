#!/bin/bash

echo "1) Sumar"
echo "2) Restar"
echo "3) Multiplicar"
echo "4) Dividir"
echo "Elige una opción:"
read seleccion

echo "Introduzca el primer numero"
read x
echo "Introduzca el segundo numero"
read y
case $seleccion in
    1)
    z=$(("$x" + "$y"))
    echo "El resultado es: $z"
    ;;
    2)
    z=$(("$x" - "$y"))
    echo "El resultado es: $z"
    ;;
    3)
    z=$(("$x" * "$y"))
    echo "El resultado es: $z"
    ;;
    4)
    z=$(("$x" / "$y"))
    echo "El resultado es: $z"
    ;;
    *)
    echo "Introduzca una opción válida"
    ;;
esac