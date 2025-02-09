#!/bin/bash

# This script creates a new user on the local system

# You will be prompted to enter the username(login) the person name and password

# The username,password, and host for the account will be displayed

# make sure script is executed with super user privilages

if [[ "${UID}" -ne 0 ]]
then
    echo "please run with SUDO or as root user"
    exit 1
fi

# Get the username(login)
# -p = prompt

read -p "Enter the username to create: " USER_NAME

#Get the real name (contents for description field)
read -p "Enter the real name of user who is using this account " COMMENT

# Get the password for the user
read -p "Enter the userpassword to create: " PASSWORD

# Create the account
# -m = home direcotry
useradd -c "${COMMENT}" -m ${USER_NAME}


# check to see the if useradd command succeeded

if [[ "${?}" -ne 0 ]]
then
    echo "The account couldn't be created"
    exit 1
fi

# set the password for account

echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then 
    echo "The password for the account couldn't be created"
    exit 1
fi


# Force password change on first login

passwd -e ${USER_NAME}

# Display the username, password and host where the user is created
# blank echo gives space
echo
echo "username:"
echo "${USER_NAME}"
echo
echo "password:"
echo "${PASSWORD}"
echo
echo "host:"
echo "${HOSTNAME}"
exit 0



