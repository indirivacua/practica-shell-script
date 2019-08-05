#!/bin/bash

if [ $# -eq 1 ] || [ $# -gt 1 ]
then
    j=1
    cantInex=0
    for i in $*
    do
        if [ $(expr $j % 2) -eq 0 ] #Si es par, se saltea dos bucles y pasa al siguiente
        then
            let j++
            continue 2
        else # Si es impar
            if [ -e $i ] # Existe?
            then        
                if [ -f $i ] # Fichero?
		        then
			        echo "Es un fichero ordinario (archivo)"
		        else
			        if [ -d $i ] # Si no es fichero, es carpeta?
			        then
				        echo "Es una directorio ordinario (carpeta)"
			        fi
                fi
            else
                echo "El directorio o archivo no existe"
                let cantInex++
            fi
        fi
        let j++
    done
    echo "Cantidad de inexistentes: ${cantInex}"
else
    echo "Faltan parametros"
    exit 1 
fi
