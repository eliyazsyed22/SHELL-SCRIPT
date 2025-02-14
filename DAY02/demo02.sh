#!/bin/bash

# This script will generate a random password for the users specified on command line

#TODO-1  Display what type of command user used
echo "You executed this command ${0}"
# echo "you can pass full path also here"

#TODO-2 Display the filename and path of script
echo "You used this command $(dirname ${0}) to execute the script"
echo "You want to ge the path of your script here is path $(basename ${0})"

#TODO-3 check how many parameters passed while executing script
echo "No of parmas exected ${#}"
#( Parms VS args Inside script they are Parms outside they are args)
NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} arguments on the command line" 

#TODO-4 Make sure they supply atleast one argument

if [ "${NUMBER_OF_PARAMETERS}" -lt 1 ]
then
    echo "Usage: ${0} USER_NAME"
    exit 1
fi

#TODO -5 generate a password for username passed through as arguments

for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c48)
    echo "${USER_NAME} : ${PASSWORD}"
done


#TODO-6 difference between ${@} and ${*}

for USER_NAME in "${*}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c48)
    echo "${USER_NAME} : ${PASSWORD}"
done

