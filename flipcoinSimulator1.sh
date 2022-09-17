#!/bin/bash

isHead=1;
h=0;
t=0;

read -p "Enter no of flips : " f

for (( i=1 ; i<=$f ; i++ ))

do

c=$(( RANDOM%2 ))

if [ $isHead -eq $c ]
then
	a=head;
	(( h++ ))
else
	a=tail;
	(( t++ ))
fi
done

echo "Head won $h times";
echo "Tail won $t times";








