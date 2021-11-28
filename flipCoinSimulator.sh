#!/bin/bash -x

echo "Welcome to Flip Coin Simulator Program";

#Variables
headCount=0;
tailCount=0;

#Fliping Coin Upto 10 Times
while [[ $headCount -ne 21 && $tailCount -ne 21 ]]
do
	flip=$((RANDOM%2));
	if (( $flip == 1 ))
	then
		((headCount++));
	else
		((tailCount++));
	fi
done

#Checking for Tie in Head and Tail
if (( $headCount > $tailCount ))
then
	echo "Head Wins 21 Times!!!";
elif (( $tailCount > $headCount ))
then
	echo "Tail Wins 21 Times!!!";
else
	echo "Game Tied!!!";
	for (( i=0; i<3; i++ ))
	do
		flip=$((RANDOM%2));
		echo $flip;
		if (( $flip == 0 ))
		then
			((tailCount++));
		else
			((headCount++));
		fi
	done

	echo "Tail Count After Tie = " $tailCount;
	echo "Head Count After Tie = " $headCount;

	if (( $headCount > $tailCount ))
	then
		echo "Head Wins After Tie";
	else
		echo "Tail Wins After Tie";
	fi
fi
