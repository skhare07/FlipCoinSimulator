#!/bin/bash

isHead=1;
h=0;
t=0;
function flipcoin()
{
	read -p "Enter no of flips: " f;
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

if [ $h -ge 21 ]
then
echo "Head won $h times and by $(( $h - $t )) times" ;

elif [ $t -ge 21 ]
then
echo "Tail won $t times and by $(( $t -$h )) times";

elif [ $h -eq $t ]
then

	echo " It's a tie";
	echo " head: $h";
	echo " tail: $t";


else
	echo "Head won $h times";
	echo "Tail won $t times";

fi

}



	flipcoin ;



