#!/bin/bash

if [ $# -eq 1 ] # Cant. Param correctos?
then
	if [ -e $1 ] # Existe?
	then
		if [ -f $1 ] # Fichero?
		then
			echo "Es un fichero ordinario (archivo)"
		else
			if [ -d $1 ] # Si no es fichero, es carpeta?
			then
				echo "Es una directorio ordinario (carpeta)"
			fi
		fi
	else # No existe, se crea una carpeta con su nombre
		mkdir $1
		echo "Carpeta creada"
		echo "$(ls -l | grep $1)" #Imprimo solo la carpeta para mostrar que se creo
	fi
fi