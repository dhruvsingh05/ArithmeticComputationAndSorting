#!/bin/bash -x
read -p "enter 1st number" a
read -p "enter 2nd number" b
read -p "enter 3rd number" c
d=$(($a+$b*$c))
ans[1]=$d
echo $a"+"$b"*"$c": "$d
e=$(($a*$b+$c))
ans[2]=$e
echo $a"*"$b"+"$c": "$e
f=$(($c+$a/$b))
ans[3]=$f
echo $c"+"$a"/"$b": "$f
g=$(($a%$b+$c))
ans[4]=$g
echo $a"%"$b"+"$c": "${ans[4]}
#temp=${ans[1]}

for (( i=1;i<4;i++ ))
do
for (( j=($i+1);j<5;j++ ))
do
if [ ${ans[i]} -le ${ans[j]} ]
then
echo "hello"
temp=${ans[i]}
ans[$i]=${ans[j]}
ans[$j]=$temp
fi
done
done
echo ${ans[@]}
