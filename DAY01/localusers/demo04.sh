#!/bin/bash

# This script creates an account on the local system
# you will be prompted for the account name and password


# ASK for the username
read -p "Enter the username to create: " USER_NAME


# ASK for thre realname
read -p 'Enter the  name of the person who this account is for: 'COMMENT


#ASK for the password
read -p 'Enter the password to use for the account: ' PASSWORD


# create the user
# -m userhome directory

useradd -c "${COMMENT}" -m ${USER_NAME}

# set the password for the user


#Force password change on first login


