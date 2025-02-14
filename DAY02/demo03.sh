#!/bin/bash

# Demonstrate the use of shift command and while loops


# for my refrence all parms uses
echo "${0}"
echo "${1}"
echo "${2}"
echo "${#}"
echo "${?}"
echo "${*}"


#TODO -1 Display the first three parameters

echo "Parameter 1 : ${1}"
echo "Parameter 2 : ${2}"
echo "Parameter 3 : ${3}"

#TODO -2 loop through all positional params

while [ "${#}" -gt 0 ]
do 
    echo "Number of params: ${#}"
    echo "Params 1 : ${1}"
    echo "Params 2 : ${2}"
    echo "Params 3 : ${3}"
    echo
    shift 
done

