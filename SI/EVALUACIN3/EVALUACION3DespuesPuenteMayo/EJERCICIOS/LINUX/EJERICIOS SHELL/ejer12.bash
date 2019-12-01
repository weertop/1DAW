#!/bin/bash
if [ $# -gt 0 ]; then
	echo "1- Comprobar si el o los ficheros existen en el directorio actual"
	echo "2- Mostrar nombre y tamaño del fichero o ficheros"
	echo "Introduzca opción"
	read opc
	
	case $opc in 
		1) for i in $*; do
			if [ -e $i ]; then
			echo "$i existe"
			fi
		done;;
		2) for i in $*; do
			du -s $i
			
		done;;
		*) echo "No es una opción correcta";;
	esac
else
	echo "No hay argumentos"
fi
