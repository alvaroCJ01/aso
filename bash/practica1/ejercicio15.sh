#!/bin/bash
echo "Introduzca un número: "
read n
i=1
while [[ i -le 10 ]]; do
    resultado=$((i * n))
    echo "$i x $n = $resultado"
    ((i++))
done