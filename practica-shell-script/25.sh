#!/bin/bash

#USO 'adm' PORQUE 'users' TIENE SOLO 1 USUARIO Y ASI NO TIENE GRACIA

arr=()

function getElemento {
	if [ $1 -gt $(expr ${#arr[*]} - 1) ]
	then
		echo "La posicion se va de rango"
	else
		echo "El elemento en $1 es: ${arr[$1]}"
	fi
}

function longitud {
	echo "La longitud es: ${#arr[*]}"
}

function print {
	for i in ${arr[*]}
	do
		echo "$i"
	done
	#Se podría haber hecho echo ${arr[*]} pero así queda mas lindo
}

#Se "imprime" el contenido del archivo, grep lo recibe como entrada y busca la linea que contenga un "adm:", por el formato del archivo lo parseamos ya quen nos importa solo la field 4 (quedando algo como "syslog,cacho")
users=$(cat /etc/group | grep "adm:" | cut -d ":" -f 4)
#Cuando una variable quiere ser usada como entrada a un comando necesitando el uso de $() se debe poner echo adelante 
#A partir de lo que quedo en users (el texto), para que sea mas comodo, se remplazan las comas por espacios y luego se cuentan las lineas, esto se hace para que luego dentro del for se vaya desde 0 hasta la cantidad de lineas + 2 y hacer los respectivos -f $i ($i=field number) para obtener cada usuario
cantLineas=$(echo ${users} | tr "," "	" | wc -l)
for ((i=1; i < $(expr ${cantLineas} + 2); i++))
do
	#echo $(echo ${users} | cut -d "," -f ${i})
	arr[$(expr $i - 1)]=$(echo ${users} | cut -d "," -f ${i})
done

if [ $# -eq 1 ] || [ $# -gt 1 ]
then
	casoB=0
	for i in $*
	do
		case $i in
		"-b")
		casoB=1
		continue
		;;
		"-l")
		longitud
		;;
		"-i")
		print
		;;
		esac
		if [ $casoB -eq 1 ]
		then
			echo "HOLA"
			getElemento $i
			casoB=false
		fi
	done
fi