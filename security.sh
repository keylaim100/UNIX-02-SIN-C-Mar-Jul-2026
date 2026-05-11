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

#The command searches for specific group names within the system's group definition file
grep "desarrolladores\|diseno" /etc/group

#This command adds an existing user to a specific group
adduser root marketing
#displays the UID GID and Groups associated with a specific user
id root

groupadd grupo_temporal #Creates a new group named on the system
usermod -aG grupo_temporal root #Appends the user root to the supplementary group grupo_temporal without removing them from existing groups
id root

#this replaces all of root's previous secondary groups with only desarrolladores
usermod -G desarrolladores root

#adds the root user to multiple groups at once
usermod -aG diseno,marketing,grupo_temporal root

#set up a directory structure and create files for a laboratory environment
mkdir -p ~/lab_chgrp/{proyectos,reportes,scripts}
touch ~/lab_chgrp/proyectos/app.py
touch ~/lab_chgrp/proyectos/config.json
touch ~/lab_chgrp/reportes/informe.txt
touch ~/lab_chgrp/scripts/deploy.sh

#list the contents of two specific directories with detailed permission information
ls -la ~/lab_chgrp/reportes/
ls -la ~/lab_chgrp/proyectos/

#It assigns the app.py file to the desarrolladores group
chgrp desarrolladores ~/lab_chgrp/proyectos/app.py