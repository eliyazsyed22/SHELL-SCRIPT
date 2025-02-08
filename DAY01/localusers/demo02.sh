#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is the root user or not

# Display the UID
echo "Your UID is ${UID}"

# Display the username
# to catch output of a command we use $() not ${}
USER_NAME=$(id -un)
# older type of command to get username
# USER_NAME=`id -un` 
# `` is used in older scripts new scripts use $()
echo "Your username is ${USER_NAME}"

# Display if the user is the root user or not
# [[]] this is used for bash shell for others shell it may not work
if [[ "${UID}" -eq 0]]
then
    echo "Your are root"
else
    echo "You are not root"
fi








