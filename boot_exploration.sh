# these commands do the same
# this is the short version
ls -a
# this is the long version
ls --all
#result of both
#@keylaim100 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls -a
#.           README.md                         darwin_doc_no_cifrado.txt                  doc_cifrado_y_firmado.txt                        firma_separada_doc_no_cifrado.sig
#..          amigo_doc_cifrado.txt             darwin_doc_no_cifrado_firmado.txt          doc_cifrado_y_firmado_descifrado_y_validado.txt  gnupg_script.sh
#.git        amigo_llave_publica.asc           darwin_doc_no_cifrado_firmado_binario.txt  doc_no_cifrado.txt                               mi_llave_publica.asc
#.gitignore  boot_exploration.sh               darwin_firma_separada_doc_no_cifrado.sig   doc_no_cifrado_firmado.txt
#LICENSE     darwin_doc_cifrado_y_firmado.txt  doc_cifrado.txt                            doc_no_cifrado_firmado_binario.txt
#@keylaim100 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls --all
#.           README.md                         darwin_doc_no_cifrado.txt                  doc_cifrado_y_firmado.txt                        firma_separada_doc_no_cifrado.sig
#..          amigo_doc_cifrado.txt             darwin_doc_no_cifrado_firmado.txt          doc_cifrado_y_firmado_descifrado_y_validado.txt  gnupg_script.sh
#.git        amigo_llave_publica.asc           darwin_doc_no_cifrado_firmado_binario.txt  doc_no_cifrado.txt                               mi_llave_publica.asc
#.gitignore  boot_exploration.sh               darwin_firma_separada_doc_no_cifrado.sig   doc_no_cifrado_firmado.txt
#LICENSE     darwin_doc_cifrado_y_firmado.txt  doc_cifrado.txt                            doc_no_cifrado_firmado_binario.txt

# list all permissions, users, hidden files, etc
# The three do the same thing
ls -l -a -h
ls -l -ah
ls -lah

#interprets as option
mkdir -rf
#correct option to create the directory
mkdir -- -rf
#to delete the directory
rmdir -- -rf
# Manual
# quick summary version
ls --help
# For COMPLETE NAVIGATION MENU: /(TEXT TO SEARCH) "n" FORWARD "N" BACK, q TO EXIT
man ls


man git-clone

# --depth <depth>
#           Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the
#           histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.

#permissions
#u g o (user) (groups) (others)
#r w x (read) (write) (execute)

#-rw-rw-rw- 1 codespace root      34523 Apr 17 14:08 LICENSE

# -: normal file d: directory l: symbolic link
#rwx: permissions for user (read) (write) (execute)
# r-x: permissions for group
# r-- permissions for others

#change permissions
chmod +x script.sh
chmod u+x script.sh
chmod o-r secreto.txt
chmod u+rw,go-rwx privado
# - to remove
# + to add
# , to add operation

#super user, system administrator user, only runs in the command below
sudo #(super user do)
sudo echo "hola" > /etc/archivo_protegido # It does not give permission because sudo is executed on the command that is next to it

# The Tee is like a pipe, information enters and splits into two paths
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null # /dev/null prevents it from appearing in the terminal 
echo "hola" | sudo tee /etc/archivo_protegido # Here "hello" is displayed on the screen

#launch a whole shell with sudo (shell: command interpreter)
#>> adds at the end
sudo sh -c 'echo "chao" >> /etc/archivo_protegido'
#sudo runs something as root
#sh opens a shell
#-c tells the shell that everything in single quotes should be interpreted by that root shell

#open a login shell as the root user temporarily
sudo -i
#to go out
exit
#switch to the root user 
sudo su

#CONTAINS THE PATH TO THE HOME DIRECTORY 
echo "$HOME"
#SHOWS IT AS A TEXT, PRINTS THE STRING
echo '$HOME'

echo '#!/bin/sh' > hola.sh #Create the file hola.sh and write the shebang in its first line
echo 'echo "Hola desde mi primer script"' >> hola.sh #add at the end the instruction to print the message "Hola desde mi primer script
cat hola.sh
./hola.sh #I didn't work here because we didn't have execution permissions
ls -l hola.sh
chmod +x hola.sh # Wth this the execution permissions were given to it
ls -l hola.sh
./hola.sh

#use of sudo
ls /etc #it doesn't need it because it's public
touch /etc/prueba.txt #if it is needed because it belongs to root and does not allow normal users to write
mkdir ~/mi_carpeta #it doesn't need
apt install cowsay #if needed, installing packages touches system addresses

#read = 4 
#write = 2
#execution = 1
#no permission = 0

#permissions
touch prueba.txt
chmod 600 prueba.txt #permissions user: read and write, group: nothing, others: nothing
ls -l prueba.txt
chmod 755 prueba.txt #permissions user: read, write and eexcution, group: read and execution, others: read and execution
ls -l prueba.txt

#define the default permissions that are removed when creating files or directories
umask 

#AI is not used because it can make us dizzy; that is why we use the experience of other developers to solve problems, example page: stackoverflow
#We use the issue section to see the problems that exist in the projects and be able to solve them ourselves


sudo apt update #update package list
sudo apt upgrade #install recent versions of the packages
sudo apt-get install acl
sudo chown -R $(whoami) . #This command uses root privileges to recursively change the ownership
sudo setfacl -bnR .
