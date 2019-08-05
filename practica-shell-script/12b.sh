#!/bin/bash
# Invocarlo de la siguiente forma: ./12b.sh param1 param2
if [ $# -eq 2 ]
then
	echo "$(expr $1 \* $2)"
	echo "$(expr $1 + $2)"
	echo "$(expr $1 - $2)"
	if [ $1 -gt $2 ]
	then
		echo $1
	else
		echo $2
	fi
fi
