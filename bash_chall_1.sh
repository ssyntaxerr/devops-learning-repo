#!/bin/bash

# User input
echo "Enter a number: "
read number1

echo "Enter another number: "
read number2

#Addition, subtraction, multiplication
sum=$(( number1 + number2 ))
diff=$(( number1 - number2 ))
prod=$(( number1 * number2 ))


#Division check
if [ "$number2" -ne 0 ]; then
    division=$(( number1 / number2 ))
    echo "Addition: $sum  Subtraction: $diff  Multiplication: $prod  Division: $division"

else 
    echo "Addition: $sum  Subtraction: $diff  Multiplication: $prod  Cannot divide by 0"

fi
