#!/bin/bash
# larkProject.sh
# A terminal learning game using bash scripting

read -p "Enter your name " userName
echo -e "\nYour name is $userName"

cd gameRoot
cat README

helloWorld=0

cd helloWorld
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

cd ..
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
			echo -e "\nAccess rights to aiDirector needs to be changed"
			read -p "Use man chmod to learn how to use it " man

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

authentication=0

echo -e "Additional Authentication is needed\nA series of questions will authenticate your identity\n"

until [ $authentication -eq 1 ]
	do
		authentication=1
		cd decisionChoices
		cd q1

		echo "2+2=? "

		select question in *;
		do
			q1Answer=$questioin
			break
		done		
		
		cd ..
		cd q2

		echo "^_^"
		select question in *;
		do
			q2Answer=$question
			break
		done
		
		cd ..
		cd q3
		echo "What is a person to you?"
		select question in *;	
		do
			q3Answer=$question
			break
		done
		
		cd ..
		cd q4
		echo -e "You are walking through the desert and come across a thirsty traveller.\nYou have water, but are unsure how long it will be before you get more. What do you do?"
		select question in *;
		do
			q4Answer = $question
			break
		done
	done

echo "Additional authentication will be needed for full admin priveleges but basic read access is granted"
cd ../..
cd interestingFiles
ls

quit=0

until [ $quit -eq 1 ]
	do
		read -p "The less command can be used instead of cat for reading files(Press q to quit)" choice
		if [ "$choice" = "q" ]
		then
			quit=1
		else
			$choice
		fi

	done
userDir=0


until [ userDir -eq 1 ]
	do
		echo "To gain full access create a user profile - Change to the users directory using cd"
		read changeDir
		$changeDir
		if [ "$changeDir" = "cd users" ]
		then
			userDir=1
		fi
	done






