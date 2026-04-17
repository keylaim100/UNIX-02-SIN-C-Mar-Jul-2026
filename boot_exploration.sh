# these commands do the same
# this is the short version
ls -a
# this is the long version
ls --all
#result of both
@keylaim100 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls -a
.           README.md                         darwin_doc_no_cifrado.txt                  doc_cifrado_y_firmado.txt                        firma_separada_doc_no_cifrado.sig
..          amigo_doc_cifrado.txt             darwin_doc_no_cifrado_firmado.txt          doc_cifrado_y_firmado_descifrado_y_validado.txt  gnupg_script.sh
.git        amigo_llave_publica.asc           darwin_doc_no_cifrado_firmado_binario.txt  doc_no_cifrado.txt                               mi_llave_publica.asc
.gitignore  boot_exploration.sh               darwin_firma_separada_doc_no_cifrado.sig   doc_no_cifrado_firmado.txt
LICENSE     darwin_doc_cifrado_y_firmado.txt  doc_cifrado.txt                            doc_no_cifrado_firmado_binario.txt
@keylaim100 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls --all
.           README.md                         darwin_doc_no_cifrado.txt                  doc_cifrado_y_firmado.txt                        firma_separada_doc_no_cifrado.sig
..          amigo_doc_cifrado.txt             darwin_doc_no_cifrado_firmado.txt          doc_cifrado_y_firmado_descifrado_y_validado.txt  gnupg_script.sh
.git        amigo_llave_publica.asc           darwin_doc_no_cifrado_firmado_binario.txt  doc_no_cifrado.txt                               mi_llave_publica.asc
.gitignore  boot_exploration.sh               darwin_firma_separada_doc_no_cifrado.sig   doc_no_cifrado_firmado.txt
LICENSE     darwin_doc_cifrado_y_firmado.txt  doc_cifrado.txt                            doc_no_cifrado_firmado_binario.txt

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


#ugo (user groups others)
#rwx (read write execute)