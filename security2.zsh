#see the current main group
id 
#only the main group name
id -gn
#create a file and see which group it inherits
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
#the group is the user's primary group 