md

#File system notes

#Navigation
pwd- show current directory
ls -lah - list files with details
cd var/log -move into logs directory

##Files and Directories
-touch test.txt - create file
-mkdir -p projects/demo - creates directories
-cp test.txt projects/demo - copy file
-mv test.txt backup.txt -rename file
-rm backup.txt - delete file

##Viewing Files
-cat /etc/psswd - view file
-less var/log/syslog - scroll logs
-head -n 10 file.txt - first lines
-tail -f var/log/auth.log - live logs

##What I learned
Linux file navigation is essential for server work and DevoOps automation
