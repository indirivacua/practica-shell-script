#!/bin/bash

#$1 directorio, $2 opcion a o b, $3 CADENA
if [ $# -eq 3 ]
then
	if [ -e $1 ]
	then
		case $2 in
		"-a")
		for i in $(ls $1)
		do
			mv $1/$i $1/$i$3
		done
		;;
		"-b")
		for i in $(ls $1)
		do
			mv $1/$i $1/$3$i
		done
		;;
		esac
	else
		echo "No existe el directorio"
		exit 2
	fi
else
	echo "Cantidad de parametros incorrectos"
	exit 1
fi