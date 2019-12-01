#!/bin/bash
if [ $# = 2 ]; then
	
	if [ -f $1 ]; then
		if [ -f $2]; then
			echo "$2 ya existe"
		else
			cp $1 $2
		fi
	else
		echo "$1 no es un fichero"
	fi
else
	echo "número de parámetros erróneo"
fi
		
		
