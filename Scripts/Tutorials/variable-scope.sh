#!/bin/bash
# variable scope example

# these are global variables
name1="John"
name2="Jason"

# Creating a function name_change and overlay name1 variable to a  local one
# variable name2 is changed and is still a global variable
name_change() {
  local name1="Edward"
  echo "Inside of this function, name1 is $name1 and name2 is $name2"
  name2="Lucas"
}

echo "Before the function call, name1 is $name1 and name2 is $name2"

#Calling the function name_change
name_change

echo "After the function call, name1 is $name1 and name2 is $name2"
