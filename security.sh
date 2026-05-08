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
#see the UID and GID of the current user
id -u #user ID
11  id -g #main group ID
12  id -G #all the groups
# ~ :home
mkdir ~/proyecto_unix/ #new directory 
ls -la ~/proyecto_unix/

groupadd desarrolladores 
groupadd -g 2000 operaciones 
groupadd --system servicios_web

grep -E "desarrolladores|operaciones|servicios_web" /etc/group
#display the predefined range limits for both system and regular Group IDs
grep -E "GID_MIN|GID_MAX|SYS_GID" /etc/login.defs

#The user is creating standard, manual-GID, and system groups using the addgroup utility and verifying them in the system group file
addgroup diseno
addgroup -gid 2100 marketing
addgroup --system cache_web
grep "diseño\|marketing\|cache_web" /etc/group

#appends the specified user to supplementary groups without removing them from their existing ones
usermod -aG desarrolladores root
usermod -aG diseno root