#!/usr/bin/env bash

function ask_n_files
{
	read -p "How many files are in the current directory? " response 
	echo $response
}


function check_response
{
	local n_files=$(ls | wc -l)
	local guess=$1
	if [[ $guess -gt n_files ]]
	then
		echo 1
	elif [[ $guess -lt n_files ]]
	then
		echo -1
	else
		echo 0
	fi
}

function main
{
	local result=2
	local response=0
	while [[ $result -ne 0 ]]
		do
			response=$(ask_n_files)
			result=$(check_response response)
			if [[ $result -eq 1 ]]
			then
				echo "Guess is too high. Try again."
			elif [[ $result -eq -1 ]]
			then
				echo "Guess is too low. Try again."
			else
				echo "You guessed it! Congratulations!"
			fi
		done
}


main