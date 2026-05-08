# displays the real and effective user and group IDs for the current or specified user
id 
#displays the names of the groups that the current user
groups
# displays a colon-separated text file that contains essential information about the user accounts
cat /etc/passwd
# retrieves the first 10 lines of the system's user database
cat /etc/passwd | head -10
#files and directories inherit the GID and UID
touch test.txt
ls -la
#see all the system groups / groups to which the current user belongs
cat /etc/group | head -10
groups $USER