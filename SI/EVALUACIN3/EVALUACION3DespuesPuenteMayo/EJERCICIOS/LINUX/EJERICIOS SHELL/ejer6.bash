echo "¿Quién descubrió América?"
read A
if [ -z "$A" ]; then
	echo "tienes que contestar algo"
elif [ "$A" == "Cristobal Colón" ]; then
	
	echo "La respuesta es correcta"
else
	echo "La respuesta es incorrecta"
fi
