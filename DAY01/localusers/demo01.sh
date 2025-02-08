#!/bin/bash

# This script displays various infromation to screen

# Display "hello"

echo 'hello'


# assgin value to varibale
WORD='script'

# Display that varibale
echo "$WORD"

# Demonstrate that single quotes cause varibales to NOT get exposed
echo '$WORD'

# combine the varaible with hard coded text
echo "This is a shell $WORD "

# Display the contentes of a variable using a alternative syntax
echo "This is a shell ${WORD}"

# Append text to a variable
echo "${WORD}ing is fun"

# show how NOT to append text to a variable
#This doesn't work
echo "$WORDing is fun"


# Create a new variable
Ending='ed'

# Combine the two variables
echo "This is ${WORD}${Ending}"

#changing the value of ending variable
Ending='ing'
echo "${WORD}${Ending} is fun"

# Reassign value to variable
Ending='s'

echo "you are going to write many ${WORD}${Ending} in this class"




