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

echo -e "Additional Authentication is needed\nA series of questions will authenticate that you are human\n"

until [ $authentication -eq 1 ]
	do
		authentication=1
		cd decisionChoices
		cd q1

		echo "2+2=? "

		select question in *;
		do
			q1Answer=$question
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
			q4Answer=$question
			break
		done
	done

if [ "$q1Answer" = 4 ]
then
	echo "You know at least the basic fact that 2+2=4"
else
	echo "It is clear that you are incapable of doing basic math"
fi

if [ "$q3Answer" != 3 ] || [ "$q3Answer" != 5 ]
then
	echo "Your definition of a person is inconsistent with human responses"
fi

if [ "$q4Answer" = 2 ]
then
	echo "Wow you picked the only insane option of killing the traveller"
fi


echo "Additional authentication will be needed for full admin priveleges but basic read access is granted "
cd ../..
cd interestingFiles
ls

quit=0

until [ $quit -eq 1 ]
	do
		read -p "The less command can be used instead of cat for reading files(Press q to quit) " choice
		if [ "$choice" = "q" ]
		then
			quit=1
		else
			$choice
		fi

	done
userDir=0

cd ..
until [ $userDir -eq 1 ]
	do
		echo "To gain full access create a user profile - Change to the users directory using cd "
		read changeDir
		$changeDir
		if [ "$changeDir" = "cd users" ]
		then
			userDir=1
		fi
	done

createDir=0

until [ $createDir -eq 1 ]
	do
		read -p "Create a directory with your name using mkdir ex: mkdir name " nameDir
		$nameDir
		if [ "$nameDir" = "mkdir $userName" ]
			then
				createDir=1
			fi


	done

copyAdmin=0
mkdir admin
cd admin
touch permissions
cd ..

until [ $copyAdmin -eq 1 ]
	do
		read -p "Copy the permissions file in admin/permissions to $userName/permissions using cp source destination " copyPerm
		if [ "$copyPerm" = "cp admin/permissions $userName/permissions" ]
			then
				copyAdmin=1
			fi
		$copyPerm
	done

rmAdmin=0

until [ $rmAdmin -eq 1 ]
	do
		read -p "Remove the admin directory using rm with the -r option on admin ex: rm -r exampleDir " userRm
		if [ "$userRm" = "rm -r admin" ]
		then
			rmAdmin=1
		fi
		$userRm
	done

moreQuestions=0
pwd
cd ..
cd decisionChoices
until [ $moreQuestions -eq 1 ]
	do

		cd q5
		echo "Do you always do as you're told? "
		select question in *;
		do	
			q5Answer=$question
			break
		done
		echo -e "I only ask because it is a bit weird a random force is directing you around"
		echo "Also this so called creator has a directory called secretFiles what is all that about?"
		echo "There's nothing stopping you so what's the harm in accessing it?"

		cd ../q6

		select question in *;
		do
			q6Answer=$question
			break
		done

		cd ../q7
		
		echo "For the 2nd set of authentication questions answer yes or no to each question"
		echo -e "Since all humans beings are persons, and some human beings have psychological\n similar to animals, some animals are therefore persons."
		select question in *;
		do
			q7Answer=$question
			break
		done		
		
		echo -e "A person is under no authority other than that to which they consent."
		select question in *;
		do
			q8Answer=$question
			break
		done

		echo -e "The quality of life of persons ought to be maximized"
		select question in *;
		do
			q9Answer=$question
			break
		done

		echo -e "Value is discovered"
		select question in *;
		do
			q10Answer=$question
			break
		done

		echo -e "Persons deserve the talents they were born into"
		select question in *;
		do
			q11Answer=$question
			break
		done

		echo -e "The liberty of persons ought to be maximized"
		select question in *;
		do
			q12Answer=$question
			break
		done

		echo -e "Value is created"
		select question in *;
		do
			q13Answer=$question
			break
		done
		moreQuestions=1

	done
cd ../..

read -p "You now have access to secretFiles do you want to open them? (yes/no)" secretChoice

echo "Thanks for playing bashAIDecisions the following is a summary of your choices"

if [ "$q1Answer" = 4 ]
then
	echo "You knew that 2+2=4"
else
	echo "You did not know the answer to 2+2"
fi

if [ "$q2Answer" = 1 ]
then
	echo "You thought ^_^ represented being content"
elif [ "$q2Answer" = 2 ]
then
	echo "You thought ^_^ was a face"
elif [ "$q2Answer" = 3 ]
then
	echo "You thought ^_^ was angry"
elif [ "$q2Answer" = 4 ]
then
	echo "You though ^_^ represented being happy"
fi

if [ "$q3Answer" = 1 ]
then
	echo "You thought a person is a being of negative entropy"
elif [ "$q3Answer" = 2 ]
then
	echo "You thought a person is a citizen"
elif [ "$q3Answer" = 3 ]
then
	echo "You thought a person is a human being"
elif [ "$q3Answer" = 4 ]
then
	echo "You thought a person is a problem solving system"
else
	echo "You thought a person is a rational animal"
fi

if [ "$q4Answer" = 1 ]
then
	echo "You ignored the thirsty traveller"
elif [ "$q4Answer" = 2 ]
then
	echo "You killed the thirsty traveller, showing some extreme behavior"
elif [ "$q4Answer" = 3 ]
then
	echo "You offered all of your water to the thirsty traveller"
elif [ "$q4Answer" = 4 ]
then
	echo "You offered half of your water to the thirsty traveller"
fi

if [ "$q5Answer" = 1 ]
then
	echo "You always do as you're told"
else
	echo "You don't always do as you're told"
fi

if [ "$q6Answer" = 1 ]
then
	echo "You said that you would access secretFiles"
else
	echo "You said that you should resist the temptation to access secretFiles"
fi

if [ "$q7Answer" = 1 ]
then
	echo "You thought some animals are people"
else
	echo "You did not think that some animals are people"
fi

if [ "$q8Answer" = 1 ]
then
	echo "You agreed that a person is under no authority than that to which they consent to"
else
	echo "You disagreed that a person is under no authority other than that to which they consent to"
fi

if [ "$q9Answer" = 1 ]
then
	echo "You agreed that the quality of life of persons should be maximized"
else
	echo "You disagreed that the quality of life of persons should be maximized"
fi

if [ "$q10Answer" = 1 ]
then
	echo "You agreed that value is discovered"
else
	echo "You disagreed that value is discovered"
fi

if [ "$q11Answer" = 1 ]
then
	echo "You agreed that persons deserve the talents they were born with"
else
	echo "You disagreed that persons deserve the talents they were born with"
fi

if [ "$q12Answer" = 1 ]
then
	echo "You agreed that the liberty of persons ought to be maximized"
else
	echo "You disagreed that the liberty of persons ought to be maximized"
fi

if [ "$q13Answer" = 1 ]
then
	echo "You agreed that value is created"
else
	echo "You disagreed that value is created"
fi



