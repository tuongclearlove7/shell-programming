echo -n "Nhap he so a: " ; read a
echo -n "Nhap he so b: " ; read b
if [ $a -eq 0 ] ; then
  if [ $b -eq 0 ] ; then
     echo "Vo so nghiem"
  else
     echo "Vo nghiem"
  fi
else
   x=$(echo "scale=3;-1*$b/$a"|bc -l)
  echo "x = $x"
fi
echo "Cach 1"


if test $1 -eq 0 ; then
	if test $2 -eq 0 ; then
		echo "Vo so nghiem!"
	else
		echo "Vo nghiem!"
	fi
else
	x=$(echo "scale=3;-1*$2/$1" | bc -l)
	echo "PT co 1 nghiem: x = $x"
fi
echo "Cach 2"