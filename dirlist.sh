#!/bin/bash

# List all contents in a directory and write (append) the output to file: dir_list.txt

ls >> dir_list.txt

# Append the date and time to dir_list.txt

echo "... END OF ENTRY FOR `date +\"%d\"\/\"%m\"\/\"%Y\"` AS OF `date +\"%r\"`." >> dir_list.txt

