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
access=0

until [ $aiDirector -eq 1 ]
	do
		read -p "Run the aiDirector using ./aiDirector " choice
		if [ "$choice" = "./aiDirector" ]
		then
			aiDirector=1
			while [ $password -lt 3 ]
			do
			read -p "Enter the admin password " admin
			
			if [ "$admin" = "iamgod" ]
			then
				access=1
				echo "Correct password initializing aiDirector"
				break
			fi
			echo "Incorrect Password try again"
			((password++))
			done
		fi

	done

until [ $access -eq 1 ]
	do
	
	
		until [ "$man" = "man chmod" ]
		do
			read -p "Access rights to aiDirector needs to be changed using chmod use man chmod to learn how to use it " man

			if [ "$man" = "man chmod" ]
			then
				$man
			else
				echo "Enter man chmod"
			fi
		done
		
		tries=0	
		until [ "$perm" = "chmod a+r aiDirector" ]
		do
		
		if [ $tries -eq 3 ]
		then
			read -p "Use chmod a+r aiDirector to get access to aiDirector " perm
		else
		read -p "Use chmod to give all users read access to aiDirector using alphabetical syntax " perm
		fi
		if [ "$perm" = "chmod a+r aiDirector" ]
		then
			$perm
			access=1
			break
		fi
		((tries++))
		
		done



	done

