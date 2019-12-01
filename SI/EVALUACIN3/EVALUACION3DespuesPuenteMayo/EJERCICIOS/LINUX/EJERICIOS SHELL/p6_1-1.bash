#!/bin/bash
if [ $# = 1 ]; then
	
	if [ -f $1 ]; then
		echo "$1 es un fichero ordinario"
		if [ -x $1 ]; then
			echo "$1 es un fichero ejecutable"
		fi
		if [ -w $1 ]; then
			echo "$1 es un fichero en el que se puede escribir"
		fi
		if [ -r $1 ]; then
			echo "$1 es un fichero legible"
		fi
		if [ -s $1 ]; then
			echo "$1 es un fichero con tamaño mayor que 0"
		else
			echo "El tamaño de $1 es 0"
		fi
	else 
		if [ -d $1 ]; then
			ls -l $1
		else
			echo "$1 no es un directorio ni un fichero"
		fi
	
	fi
	
else
	echo "La llamada debe ser p6_1-1 argumento"
fi


