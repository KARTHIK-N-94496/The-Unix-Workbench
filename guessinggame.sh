#!/bin/bash/

function Intro
{
	echo "You are in \"$(pwd)\" directory"
}

count=$(ls|wc -l)
echo "Guess the number of lines in current directory: "

Intro

while true
do
	read guess
	if [ $guess -gt $count ]
	then
		echo "Your guess is high"
	elif [ $guess -lt $count ]
	then
		echo "Your guess is low"
	else
		echo "Your guess is right"
		break
	fi
	echo "To stop press [Ctrl+C]"
done
