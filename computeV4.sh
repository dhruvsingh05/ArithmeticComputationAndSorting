#!/bin/bash -x
read -p "enter 1st number" a
read -p "enter 2nd number" b
read -p "enter 3rd number" c
d=$(($a+$b*$c))
echo $a"+"$b"*"$c": "$d
e=$(($a*$b+$c))
echo $a"*"$b"+"$c": "$e
f=$(($c+$a/$b))
echo $c"+"$a"/"$b": "$f
