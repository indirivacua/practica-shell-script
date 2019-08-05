#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Cantidad e parametros incorrectos"
	exit 1
else
	# Los parametros aplicados a cut  es por el formato que tiene el archivo de user:permiso:....etc
	if [ $(cat /etc/passwd | cut -d ":" -f 1 | grep -w $1 | wc -l) -eq 0 ] # -w en grep hace que se busquen palabras completas
	then
		echo "El usuario no existe"
		exit 2
	else
		while true
		do
			if [ $(who | cut -f 1 | grep -w $1 | wc -l) -ne 0 ]
			then
				echo "El usuario se conecto"
				break
			else
				echo "El usuario aun no se conecta"
				sleep 5s
			fi
		done
	fi
fi