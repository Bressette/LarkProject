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


aiDirector=0
password=0

until [ $aiDirector -eq 1 ]
	do
		read -p "Run the aiDirector using ./aiDirector" choice
		if [ "$choice" = "./aiDirector" ]
		then
			aiDirector=1
			while [ $password -lt 3 ]
			do
			read -p "Enter the admin password" admin
			echo "Incorrect Password try again"
			((password++))
			done
		fi

	done



