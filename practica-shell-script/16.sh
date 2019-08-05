#!/bin/bash

# $1 -> extension
# La idea del ejercicio es que se modifique el archivo a la marcha que se 
# buscan las coincidencias de extensiones
#
# Por ende, dentro del primer for se deberia hacer un cut al archivo 'reportes.txt'
# donde si el primer elemento que es el usuario es igual al usuario del archivo
# encontrado tome el segundo campo (o columna) el cual es la cantidad de archivos
# de tal tipo y lo actualice con un +1
# Para tomar el propietario del archivo se usa ls -l path/to/file
if [ $# -eq 1 ]
then
	cant=0
	for i in $(find / -name "*.$1") # / indica filesystem
	do
		usr=$(ls -l $i | cut -f 3 -d ' ')
		let cant++
	done
	echo "${usr}	${cant}" >> reportes.txt
else
	echo "Cantidad de parametros incorrectos"
fi