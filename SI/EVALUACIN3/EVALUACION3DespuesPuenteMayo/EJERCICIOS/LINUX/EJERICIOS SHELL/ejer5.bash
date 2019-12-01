echo "Como desea el billete, (s) sencillo (d) ida y vuelta"
read A
BILLETE=20

if [ $A = s ] | [ $A = S ]; then
	echo "el importe del billete es $BILLETE"
elif [ $A = d ] | [ $A = D ]; then
	BILLETE=$((($BILLETE * 2) - (($BILLETE * 2) * 20 / 100)))
	echo "el importe del billete es $BILLETE"
else
	echo "debe contestar s o d"
fi
