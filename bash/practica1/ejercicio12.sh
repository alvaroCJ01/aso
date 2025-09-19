#!/bin/bash
fecha=$(date +%k) 

if [[ $fecha -ge 8 && $fecha -lt 15 ]]; then
    echo "Buenos dias"
elif [[ $fecha -ge 15 && $fecha -lt 20 ]]; then
    echo "Buenas tardes"
else
    echo "Buenas noches"
fi