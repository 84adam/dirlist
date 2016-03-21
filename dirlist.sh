#!/bin/bash
# log/append contents of given directory to $HOME/dir_list_log with timestamp.

# create $location variable for re-use within the program

location=$1

# create/append header message to dir_list_log file in $HOME
# include location given as argument
# include time and date of directory content retrieval

echo "#### $location <ON> \
`date +\"%d\"\/\"%m\"\/\"%Y\"` <AT> \
`date +\"%r\"` ####" \
>> $HOME/dir_list_log

# list the contents of directory given as input to command 'dirlist'
# output/append listing to dir_list_log

ls $location >> $HOME/dir_list_log

# create/append 'end of listing' message to dir_list_log

echo ">>>> End of listing for $location. <<<<" >> $HOME/dir_list_log
echo " " >> $HOME/dir_list_log

# output 'operation complete' message to console

echo "Operation Complete: Logged to $HOME/dir_list_log."
echo " "
echo "#### $location <ON> \
`date +\"%d\"\/\"%m\"\/\"%Y\"` <AT> \
`date +\"%r\"` ####"
ls -1 $location
echo ">>>> End of listing for $location. <<<<"
echo " "
