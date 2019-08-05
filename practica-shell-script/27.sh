#!/bin/bash

function inicializar {
	arr=()
}

function agregar_elem {
	if [ ${#arr[*]} -eq 0 ]
	then
		arr[0]=$1
	else
		arr[${#arr[*]}]=$1
	fi
}

function eliminar_elem {
	if [ $1 -lt $(expr ${#arr[*]} - 1) ]
	then
		unset arr[$1]
	else
		echo "Poscion fuera de rango"
	fi
}

function longitud {
	echo "Longitud: ${#arr[*]}"
}

function imprimir {
	echo "${arr[*]}"
}

function inicializar_con_valores {
	arr=()
	for ((i=0; i<$1; i++))
	do
		arr[$i]=$2
	done
}

inicializar
agregar_elem 5
agregar_elem 7
agregar_elem 36
agregar_elem 22
agregar_elem 54
imprimir
eliminar_elem 9
eliminar_elem 3
imprimir
longitud
inicializar_con_valores 5 2
imprimir