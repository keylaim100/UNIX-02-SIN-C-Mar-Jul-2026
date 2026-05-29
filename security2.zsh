#see the current main group
id 
#only the main group name
id -gn
#create a file and see which group it inherits
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
#the group is the user's primary group 

#see all available groups
groups 

echo "Grupo actual: $(id -gn)"
#create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt

#create the group for testing
groupadd desarrolladores

#install utilities required by newgrp
apt install util-linux-extra

#change root's default shell to bash
usermod -s /bin/bash root

#verify the shell change
grep root /etc/passwd

#switch to the desarrolladores group
newgrp desarrolladores

#verify the current group
id -gn

#a file is created and it is verified that the group is desarrolladores
touch ~/despues_de_newgrp.txt
ls -la ~/despues_de_newgrp