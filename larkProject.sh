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
		
		read command

		if [ "$command" = "ls" ]
		then
			$command
			echo -e "\nUse the command cat to read a file ex: cat fileName"
			continue		
		fi

		if [ "$command" = "cat helloWorld" ]
		then
			$command
			helloWorld=1
		else
			echo "Access Denied"
		fi
	done


