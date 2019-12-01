#!/bin/bash
i=1
until test $i -gt 20; do
	c=$(($i ** 2))
	cu=$(($i ** 3))
	echo $i      $c      $cu
	i=$(($i + 1))
done



