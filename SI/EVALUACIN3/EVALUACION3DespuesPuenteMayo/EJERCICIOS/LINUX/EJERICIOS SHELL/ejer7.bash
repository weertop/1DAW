#!/bin/bash
echo
echo "Mostrar cada uno de los valores de la orden date"
OPCION=0
until test "$OPCION" = "6" ;do
	echo 
	echo "1- Mostrar día en letra"
	echo "2- Mostrar dia en número"
	echo "3- Mostrar Mes"
	echo "4- Mostrar Hora"
	echo "5- Mostrar Año"
	echo "6- Salir"
	echo 
	echo "Introduzca la opción que desee" 
	echo 
	read OPCION
	case $OPCION in
		1) echo "$(date +%A)";;
		2) echo "$(date +%d)";;
		3) echo "$(date +%m-%B)";;
		4) echo "$(date +%H-%M-%S)";;
		5) echo "$(date +%y-%Y)";;
		6) exit;;
		*) echo "Opción errónea"
		   exit;;
	esac

done
