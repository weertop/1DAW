#!/bin/bash
echo
VALOR=""
until test "$VALOR" = "fin" ;do
	echo "Escriba un valor, fin, para terminar"
	read VALOR
done
