#!/bin/bash

arr=()

function cantidadArchivos {
	echo "Cantidad de archivos: ${#arr[*]}"
}

function verArchivo {
	existe=0
	for i in ${arr[*]}
	do
		#Cuando se hace echo $i imprime /home/cacho/prueba/CSOClase7.docx 
		echo $(echo $i | cut -d '/' -f 5)
		if [ "$(echo $i | cut -d '/' -f 5)" = "$1" ]
		then
			existe=1
			break
		fi
	done
	if [ $existe -eq 1 ]
	then
		cat $i
	else
		echo "No existe el archivo en el arreglo"
	fi
}

j=0
#Deberia ser solo $HOME pero /prueba/ es para debuggear
#Deberia ser solo "*.doc" pero la x es por el tipo de extension que use para debuggear
for i in $(find $HOME/prueba/ -name "*.docx")
do
	arr[j]=$i
	let j++
done

verArchivo CSOClase7.docx
cantidadArchivos

#echo ${arr[*]}