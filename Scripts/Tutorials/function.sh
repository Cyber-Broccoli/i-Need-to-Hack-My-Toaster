#!/bin/bash
# function example in bash scripting format
# EXAMPLE 1
function print_me 
  {
echo "You have been printed!"
}

#Calling the function by its name to execute it
print_me


# other function example with argument, in programmer format
# EXAMPLE 2
# passing arguments to functions

pass_arg() {
  echo "Today's random number is: $1"
}

#Calling the function and pass the RANDOM argument
pass_arg $RANDOM
