#!/bin/bash

# This script generates random passwords

#TODO 1 - will generate random number as password

PASSWORD="${RANDOM}"
echo "${PASSWORD}"

#TODO 2 - Three random numbers together

PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"


#TODO 3 - Use the current date and time as password
PASSWORD=$(date +%s)
echo "${PASSWORD}"

#TODO 4 - Use head command to get first 32 characters of password

# %s = seconds
# %N = nanoseconds
PASSWORD=$(date +%s%N | sha256sum | head -c32)      # sha256sum is used to generate hash of the password

#TODO 5 - add special character to password
SPECIAL_CHAR=$(echo "$@#&^*()" | fold -w1 | shuf | head -c1)

#TODO 6 Generate final password

echo "${PASSWORD}${SPECIAL_CHAR}"