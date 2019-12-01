#!/bin/bash
echo "1- usuarios conectados"
echo "2- Tipo de terminal"
echo "3-Listar ficheros"
echo "4- Listar directorios"
echo "5- Subir un nivel"
echo "6- Entrar en directorio"
echo "7- Buscar fichero"
echo "8- Copiar fichero"
echo "9- Borrar fichero"
echo "10- Mover fichero"
echo "11- Renombrar fichero"
echo "12- Cambiar permiso"
echo "13- Salir"
echo "Introduce opción"
read opc
case $opc in
	1) last;;
	2) tty;;
	3) ls -p | grep -v /;;
	4) ls -d */ -l;;
	5) cd ..
	   pwd;;
	6) cd $1
	   pwd;;
	7) find . -name $1;;
	8) cp $1 $2;;
	9) rm $1;;
	10) mv $1 $2;;
	11) mv $1 $2;;
	12) chmod $1 $2;;
	13) exit;;
	*) echo "opción no válida"
esac


