#!/bin/bash

#Ask user for source directory
echo "Choose a directory to backup: "
read user_dir

#Check if directory exists and copy 
if [ ! -d "$user_dir" ]; then
    echo "Directory doesn't exist"
    exit 1
else
    timestamp=$(date +"%Y%m%d_%H%M%S")
    back_up_dir="${user_dir}_backup_${timestamp}" 
    cp -R "$user_dir" "$back_up_dir" 
fi

#Print how many files backed up
file_count=$(find "$back_up_dir" -type f | wc -l)
echo "Backup complete!" "Files backed up: $file_count" 

