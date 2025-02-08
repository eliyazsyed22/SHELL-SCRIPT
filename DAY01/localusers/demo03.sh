#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is seliyaz or not.


# Display the UID
echo "your UID is ${UID}"


#only Display if the UID doesn't match 504

UID_TO_TEST_FOR='504'

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
    echo "Your UID does not match for ${UID_TO_TEST_FOR}"
    exit 1
fi

#Display the username
USER_NAME=$(id -un)
echo "your username is ${USER_NAME}"

# test if the commmand suuceedded or not

if [[ "${?}" -ne 0 ]]
then
    echo "The ID command not executed suucessfully"
    exit 1
fi


# You can use a string to test conditional

USER_NAME_TO_TEST="seliyaz"
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST}" ]]
then
    echo "you user name  matches ${USER_NAME_TO_TEST}"
fi

# Test for != (not equal) for string

if [[ "${USER_NAME}" !=  "${USER_NAME_TO_TEST}" ]]
then
    echo "Your username does not match ${USER_NAME_TO_TEST}"
    exit 1
fi


exit 0


