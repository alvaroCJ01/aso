#!/bin/bash
echo "1) Añadir"
echo "2) Buscar"
echo "3) Listar"
echo "4) Ordenar"
echo "5) Borrar"
echo "Introduzca una opción: "
read opt

case $opt in
    1)
    echo "Introduzca el nombre, direccion y telefono de la persona que quiere añadir al registro separado por comas: "
    read inf
    echo $inf >> agenda.txt
    ;;
    2)
    echo "Introduzca el nombre, numero o direccion de la entrada a buscar?: "
    read busq
    grep -F "$busq" agenda.txt
    ;;
    3)
    cat ./agenda.txt
    ;;
    4)
    sort ./agenda.txt > ./agenda_ordenado.txt && mv ./agenda_ordenado.txt ./agenda.txt
    echo "Agenda ordenada correctamente."
    ;;
    5)
    echo "Estas seguro que quieres eliminar la agenda: [y/n]"
    read elim
    if [[ $elim = y ]]; then
        rm agenda.txt
        echo "Agenda eliminada"
    else 
        echo "De acuerdo saliendo"
    fi
    ;;
    *)
        echo "Introduzca una opción válida"
    ;;
esac