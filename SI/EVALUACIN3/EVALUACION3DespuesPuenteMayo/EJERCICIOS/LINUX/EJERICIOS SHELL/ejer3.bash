echo "Introduce un número:"; read A
echo "Introduce un número:"; read B
echo "Introduce un número:"; read C

#otra forma de hacer las operaciones
#D=$(($A + $B + $C))
#E=$(($A * $B * $C))
#F=$((($A + $B + $C) / 3))


D=`expr $A + $B + $C`
E=`expr $A \* $B \* $C`
F=`expr $D / 3`

echo "La suma es  $D"
echo "El producto es  $E"
echo "La media es  $F"
