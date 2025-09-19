#!/bin/bash
read -p "Introduzca un numero: " x
y=0
until [[ x -eq 0 ]]; do
    y=$((y + x))
    echo $y
    read -p "Introduzca un numero: " x
done