I=2
J=3
K=`expr $I + $J`
echo "La suma de I ($I) más J ($J) es:" $K
I=`expr $I + 1`
echo "Incrementamos I (`expr $I - 1`) se queda en $I"



