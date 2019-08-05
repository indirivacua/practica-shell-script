#!/bin/bash

for i in $(ls -l)
do
	#echo "${i}"
	if [ -f ${i} ]
	then
		texto="$(echo ${i} | tr "[:lower:][:upper:]" "[:upper:][:lower:]")"
		echo $(echo ${texto} | tr -d "aA")
	fi
done