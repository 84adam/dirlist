# dirlist
dirlist is a simple bash script to output/append directory contents to a log with a timestamp.

#### Simply run `dirlist <directory>` after installing to a directory in your system $PATH.

Uses `ls` to list all contents of a given directory, then writes/appends the output to file `dir_list_log` in the $HOME directory. dirlist also displays the contents at the same time using `ls -1`.

If you forget to include a `<directory>` (`$location`), you will see an error message: "Please provide directory to index." NOTE: Currently, the program continues to log the current working directory by default. This will be bug will be addressed in future versions.

### dirlist log format example:

    #### /home/user <ON> 21/03/2016 <AT> 01:26:33 PM ####
    text1.txt
    text2.txt
    text3.txt
    dir_list_log
    >>>> End of listing for /home/user. <<<<

### dirlist command output format example:

    root@hostname:~# dirlist /home
    Operation Complete: Logged to /root/dir_list_log.
    _
    #### /home <ON> 22/03/2016 <AT> 01:53:31 AM ####
    file1.txt
    file2.txt
    file3.txt
    file4.txt
    user
    >>>> End of listing for /home. <<<<

