#!/bin/bash

#Ask user for filename
echo "Enter a file name: "
read file_name

#Check if file exists and its permissions
if [ -e "$file_name" ]; then
    if [ -r "$file_name" ] && [ -w "$file_name" ] && [ -x "$file_name" ]; then
        echo "File is readable, writable & executable"
    elif [ -r "$file_name" ] && [ -w "$file_name" ]; then
        echo "File is readable and writable"
    elif [ -r "$file_name" ] && [ -x "$file_name" ]; then
        echo "File is readable and executable"
    elif [ -w "$file_name" ] && [ -x "$file_name" ]; then
        echo "File is writable and executable"
    elif [ -r "$file_name" ]; then
        echo "File is only readable"
    elif [ -w "$file_name" ]; then
        echo "File is only writable"
    elif [ -x "$file_name" ]; then
        echo "File is only executable"
    else
        echo "File exists but has no permissions for current user"
    fi
else
    echo "File doesn't exist"
fi
    