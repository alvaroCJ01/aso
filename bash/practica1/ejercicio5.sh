#!/bin/bash

echo "Introduzca un numero"
read x
echo "Introduzca otro numero"
read y
z=$(((x + y) / 2))
echo $z