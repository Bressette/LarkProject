#!/bin/bash
# larkProject.sh
# A terminal learning game using bash scripting

read -p "Enter your name " userName
echo "Your name is $userName"

cd gameRoot
cat README

helloWorld=0

until [ $helloWorld -eq 1 ]
	do
		echo "In until loop"
		read command
		if [ "$command" = "cat helloWorld" ]
		then
			helloWorld=1
		fi
		$command
	done

echo "After until loop"
